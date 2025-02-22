const std = @import("std");
const Allocator = std.mem.Allocator;
const testing = std.testing;

const ColorBitmap = @import("ColorBitmap.zig");

width: u32,
height: u32,
indices: []u8,

const IndexedBitmap = @This();

pub fn init(allocator: Allocator, width: u32, height: u32) !IndexedBitmap {
    var self = IndexedBitmap{
        .width = width,
        .height = height,
        .indices = undefined,
    };
    self.indices = try allocator.alloc(u8, self.width * self.height);

    return self;
}

pub fn deinit(self: IndexedBitmap, allocator: Allocator) void {
    allocator.free(self.indices);
}

pub fn clone(self: IndexedBitmap, allocator: Allocator) !IndexedBitmap {
    return IndexedBitmap{
        .width = self.width,
        .height = self.height,
        .indices = try allocator.dupe(u8, self.indices),
    };
}

pub fn eql(self: IndexedBitmap, bitmap: IndexedBitmap) bool {
    return self.width == bitmap.width and
        self.width == bitmap.width and
        std.mem.eql(u8, self.indices, bitmap.indices);
}

pub fn convertToTruecolor(self: IndexedBitmap, allocator: Allocator, colormap: []const u8) !ColorBitmap {
    const color_bitmap = try ColorBitmap.init(allocator, self.width, self.height);
    const pixel_count = color_bitmap.width * color_bitmap.height;
    var i: usize = 0;
    while (i < pixel_count) : (i += 1) {
        const index = @as(usize, self.indices[i]);
        const pixel = colormap[4 * index ..][0..4];
        color_bitmap.pixels[4 * i + 0] = pixel[0];
        color_bitmap.pixels[4 * i + 1] = pixel[1];
        color_bitmap.pixels[4 * i + 2] = pixel[2];
        color_bitmap.pixels[4 * i + 3] = pixel[3];
    }
    return color_bitmap;
}

pub fn setIndex(self: IndexedBitmap, x: i32, y: i32, index: u8) bool {
    if (x >= 0 and y >= 0) {
        const ux = @intCast(u32, x);
        const uy = @intCast(u32, y);
        if (ux < self.width and uy < self.height) {
            self.setIndexUnchecked(ux, uy, index);
            return true;
        }
    }
    return false;
}

pub fn setIndexUnchecked(self: IndexedBitmap, x: u32, y: u32, index: u8) void {
    std.debug.assert(x < self.width);
    const i = y * self.width + x;
    self.indices[i] = index;
}

pub fn getIndex(self: IndexedBitmap, x: i32, y: i32) ?u8 {
    if (x >= 0 and y >= 0) {
        const ux = @intCast(u32, x);
        const uy = @intCast(u32, y);
        if (ux < self.width and uy < self.height) {
            return self.getIndexUnchecked(ux, uy);
        }
    }
    return null;
}

pub fn getIndexUnchecked(self: IndexedBitmap, x: u32, y: u32) u8 {
    @setRuntimeSafety(false);
    std.debug.assert(x < self.width);
    const i = y * self.width + x;
    return self.indices[i];
}

pub fn copyIndexToUnchecked(self: IndexedBitmap, dst: IndexedBitmap, x: u32, y: u32) void {
    const src_index = self.getIndexUnchecked(x, y);
    dst.setIndexUnchecked(x, y, src_index);
}

pub fn drawLine(self: IndexedBitmap, x0: i32, y0: i32, x1: i32, y1: i32, index: u8, skip_first: bool) void {
    const dx = std.math.absInt(x1 - x0) catch unreachable;
    const sx: i32 = if (x0 < x1) 1 else -1;
    const dy = -(std.math.absInt(y1 - y0) catch unreachable);
    const sy: i32 = if (y0 < y1) 1 else -1;
    var err = dx + dy;

    if (!skip_first) {
        _ = self.setIndex(x0, y0, index);
    }

    var x = x0;
    var y = y0;
    while (x != x1 or y != y1) {
        const e2 = 2 * err;
        if (e2 >= dy) {
            err += dy;
            x += sx;
        }
        if (e2 <= dx) {
            err += dx;
            y += sy;
        }
        _ = self.setIndex(x, y, index);
    }
}

pub fn copyLineTo(self: IndexedBitmap, dst: IndexedBitmap, x0: i32, y0: i32, x1: i32, y1: i32) void {
    const dx = std.math.absInt(x1 - x0) catch unreachable;
    const sx: i32 = if (x0 < x1) 1 else -1;
    const dy = -(std.math.absInt(y1 - y0) catch unreachable);
    const sy: i32 = if (y0 < y1) 1 else -1;
    var err = dx + dy;

    var x = x0;
    var y = y0;
    while (true) {
        if (self.getIndex(x, y)) |src_index| {
            dst.setIndexUnchecked(@intCast(u32, x), @intCast(u32, y), src_index);
        }
        if (x == x1 and y == y1) break;
        const e2 = 2 * err;
        if (e2 >= dy) {
            err += dy;
            x += sx;
        }
        if (e2 <= dx) {
            err += dx;
            y += sy;
        }
    }
}

pub fn clear(self: IndexedBitmap) void {
    std.mem.set(u8, self.indices, 0);
}

pub fn fill(self: IndexedBitmap, index: u8) void {
    std.mem.set(u8, self.indices, index);
}

pub fn floodFill(self: IndexedBitmap, allocator: Allocator, x: i32, y: i32, index: u8) !void {
    const old_index = self.getIndex(x, y) orelse return;
    if (old_index == index) return;

    const start_coords = .{ .x = @intCast(u32, x), .y = @intCast(u32, y) };
    self.setIndexUnchecked(start_coords.x, start_coords.y, index);

    var stack = std.ArrayList(struct { x: u32, y: u32 }).init(allocator);
    try stack.ensureTotalCapacity(self.width * self.height / 2);
    defer stack.deinit();
    try stack.append(start_coords);

    while (stack.items.len > 0) {
        const coords = stack.pop();
        if (coords.y > 0) {
            const new_coords = .{ .x = coords.x, .y = coords.y - 1 };
            if (self.getIndexUnchecked(new_coords.x, new_coords.y) == old_index) {
                self.setIndexUnchecked(new_coords.x, new_coords.y, index);
                stack.appendAssumeCapacity(new_coords);
            }
        }
        if (coords.y < self.height - 1) {
            const new_coords = .{ .x = coords.x, .y = coords.y + 1 };
            if (self.getIndexUnchecked(new_coords.x, new_coords.y) == old_index) {
                self.setIndexUnchecked(new_coords.x, new_coords.y, index);
                stack.appendAssumeCapacity(new_coords);
            }
        }
        if (coords.x > 0) {
            const new_coords = .{ .x = coords.x - 1, .y = coords.y };
            if (self.getIndexUnchecked(new_coords.x, new_coords.y) == old_index) {
                self.setIndexUnchecked(new_coords.x, new_coords.y, index);
                stack.appendAssumeCapacity(new_coords);
            }
        }
        if (coords.x < self.width - 1) {
            const new_coords = .{ .x = coords.x + 1, .y = coords.y };
            if (self.getIndexUnchecked(new_coords.x, new_coords.y) == old_index) {
                self.setIndexUnchecked(new_coords.x, new_coords.y, index);
                stack.appendAssumeCapacity(new_coords);
            }
        }
    }
}

pub fn mirrorHorizontally(self: IndexedBitmap) void {
    var y: u32 = 0;
    while (y < self.height) : (y += 1) {
        var x0: u32 = 0;
        var x1: u32 = self.width - 1;
        while (x0 < x1) {
            const index0 = self.getIndexUnchecked(x0, y);
            const index1 = self.getIndexUnchecked(x1, y);
            self.setIndexUnchecked(x0, y, index1);
            self.setIndexUnchecked(x1, y, index0);
            x0 += 1;
            x1 -= 1;
        }
    }
}

pub fn mirrorVertically(self: IndexedBitmap) void {
    var y0: u32 = 0;
    var y1: u32 = self.height - 1;
    while (y0 < y1) {
        var x: u32 = 0;
        while (x < self.width) : (x += 1) {
            const index0 = self.getIndexUnchecked(x, y0);
            const index1 = self.getIndexUnchecked(x, y1);
            self.setIndexUnchecked(x, y0, index1);
            self.setIndexUnchecked(x, y1, index0);
        }
        y0 += 1;
        y1 -= 1;
    }
}

pub fn rotate(self: *IndexedBitmap, allocator: Allocator, clockwise: bool) !void {
    const tmp_bitmap = try self.clone(allocator);
    defer tmp_bitmap.deinit(allocator);
    std.mem.swap(u32, &self.width, &self.height);
    var y: u32 = 0;
    while (y < self.width) : (y += 1) {
        var x: u32 = 0;
        while (x < self.height) : (x += 1) {
            const index = tmp_bitmap.getIndexUnchecked(x, y);
            if (clockwise) {
                self.setIndexUnchecked(self.width - 1 - y, x, index);
            } else {
                self.setIndexUnchecked(y, self.height - 1 - x, index);
            }
        }
    }
}
