const std = @import("std");
const Allocator = std.mem.Allocator;
const builtin = @import("builtin");

const c = @import("c.zig");
const gui = @import("gui");
const nvg = @import("nanovg");
const geometry = @import("gui/geometry.zig");
const Point = geometry.Point;
const Rect = geometry.Rect;
const info = @import("info.zig");

const AboutDialogWidget = @This();

widget: gui.Widget,
allocator: Allocator,
close_button: *gui.Button,

const Self = @This();

const dialog_rect = Rect(f32).make(0, 0, 260, 240);

pub fn init(allocator: Allocator) !*Self {
    var self = try allocator.create(Self);
    self.* = Self{
        .widget = gui.Widget.init(allocator, dialog_rect),
        .allocator = allocator,
        .close_button = try gui.Button.init(allocator, Rect(f32).make((dialog_rect.w - 80) / 2, dialog_rect.h - 25 - 10, 80, 25), "Close"),
    };
    self.widget.onMouseMoveFn = onMouseMove;
    self.widget.onMouseDownFn = onMouseDown;
    self.widget.onKeyDownFn = onKeyDown;

    self.close_button.onClickFn = onCloseButtonClick;

    try self.widget.addChild(&self.close_button.widget);

    self.widget.drawFn = draw;

    return self;
}

pub fn deinit(self: *Self) void {
    self.close_button.deinit();
    self.widget.deinit();
    self.allocator.destroy(self);
}

var link_itchio_bounds: [4]f32 = undefined;
var link_itchio_hover: bool = false;
var link_github_bounds: [4]f32 = undefined;
var link_github_hover: bool = false;

fn onMouseDown(widget: *gui.Widget, mouse_event: *gui.MouseEvent) void {
    _ = widget;
    if (mouse_event.button == .left) {
        const open_cmd = switch (builtin.os.tag) {
            .macos => "open ",
            .linux => "xdg-open ",
            .windows => "start ",
            else => @compileError("Unsupported OS"),
        };
        if (link_itchio_hover) {
            _ = c.system(open_cmd ++ info.link_itchio);
        }
        if (link_github_hover) {
            _ = c.system(open_cmd ++ info.link_github);
        }
    }
}

fn onMouseMove(widget: *gui.Widget, mouse_event: *gui.MouseEvent) void {
    var self = @fieldParentPtr(Self, "widget", widget);
    _ = self;
    const link_itchio_rect = Rect(f32).make(
        link_itchio_bounds[0],
        link_itchio_bounds[1],
        link_itchio_bounds[2] - link_itchio_bounds[0],
        link_itchio_bounds[3] - link_itchio_bounds[1],
    );
    link_itchio_hover = link_itchio_rect.contains(Point(f32).make(mouse_event.x, mouse_event.y));
    const link_github_rect = Rect(f32).make(
        link_github_bounds[0],
        link_github_bounds[1],
        link_github_bounds[2] - link_github_bounds[0],
        link_github_bounds[3] - link_github_bounds[1],
    );
    link_github_hover = link_github_rect.contains(Point(f32).make(mouse_event.x, mouse_event.y));
}

fn onKeyDown(widget: *gui.Widget, event: *gui.KeyEvent) void {
    var self = @fieldParentPtr(Self, "widget", widget);
    switch (event.key) {
        .Return, .Escape => self.close(),
        else => event.event.ignore(),
    }
}

fn onCloseButtonClick(button: *gui.Button) void {
    if (button.widget.parent) |parent| {
        var self = @fieldParentPtr(Self, "widget", parent);
        self.close();
    }
}

fn close(self: *Self) void {
    if (self.widget.getWindow()) |window| {
        window.close();
    }
}

pub fn draw(widget: *gui.Widget, vg: nvg) void {
    vg.save();
    defer vg.restore();

    vg.beginPath();
    vg.rect(0, 0, dialog_rect.w, dialog_rect.h - 45);
    vg.fillColor(nvg.rgbf(1, 1, 1));
    vg.fill();
    vg.beginPath();
    vg.rect(0, dialog_rect.h - 45, dialog_rect.w, 45);
    vg.fillColor(gui.theme_colors.background);
    vg.fill();

    var bounds: [4]f32 = undefined;
    _ = vg.textBounds(0, 0, info.link_itchio, &bounds);
    const link_color = nvg.rgb(0x1A, 0x6F, 0xA1);

    vg.fillColor(nvg.rgb(0, 0, 0));
    vg.textAlign(.{ .horizontal = .center });
    vg.fontFace("guifontbold");
    vg.fontSize(14);
    _ = vg.text(dialog_rect.w / 2, 35, info.app_name);
    vg.fontFace("guifont");
    vg.fontSize(11);
    _ = vg.text(dialog_rect.w / 2, 50, "Version " ++ info.version);
    vg.fontSize(12);
    vg.textAlign(.{});
    var w = vg.textBounds(0, 0, "Visit " ++ info.link_itchio, null);
    var x = (dialog_rect.w - w) / 2;
    x = vg.text(x, 80, "Visit ");
    vg.fillColor(link_color);
    var x1 = vg.text(x, 80, info.link_itchio);
    _ = vg.textBounds(x, 80, info.link_itchio, &link_itchio_bounds);
    if (link_itchio_hover) {
        vg.beginPath();
        vg.moveTo(x, 81);
        vg.lineTo(x1, 81);
        vg.strokeColor(link_color);
        vg.stroke();
    }
    vg.fillColor(nvg.rgb(0, 0, 0));
    vg.textAlign(.{ .horizontal = .center });
    _ = vg.text(dialog_rect.w / 2, 80 + 1 * 15, "for more information and updates.");
    _ = vg.text(dialog_rect.w / 2, 80 + 2 * 15, "To report a bug or to suggest a new feature");
    vg.textAlign(.{});
    w = vg.textBounds(0, 0, "visit " ++ info.link_github ++ ".", null);
    x = (dialog_rect.w - w) / 2;
    x = vg.text(x, 80 + 3 * 15, "visit ");
    vg.fillColor(link_color);
    x1 = vg.text(x, 80 + 3 * 15, info.link_github);
    _ = vg.textBounds(x, 80 + 3 * 15, info.link_github, &link_github_bounds);
    if (link_github_hover) {
        vg.beginPath();
        vg.moveTo(x, 81 + 3 * 15);
        vg.lineTo(x1, 81 + 3 * 15);
        vg.strokeColor(link_color);
        vg.stroke();
    }
    vg.fillColor(nvg.rgb(0, 0, 0));
    vg.textAlign(.{ .horizontal = .center });
    _ = vg.text(x1 + 1, 80 + 3 * 15, ".");
    vg.fontSize(11);
    _ = vg.text(dialog_rect.w / 2, 160, "Copyright © 2021-2022 Fabio Arnold.");
    _ = vg.text(dialog_rect.w / 2, 173, "All rights reserved.");

    widget.drawChildren(vg);
}
