//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (1)
//--------------------------------------------------------------------------------
pub const PERCEPTIONFIELD_StateStream_TimeStamps = Guid.initString("aa886119-f32f-49bf-92ca-f9ddf784d297");

//--------------------------------------------------------------------------------
// Section: Types (2)
//--------------------------------------------------------------------------------
pub const PERCEPTION_PAYLOAD_FIELD = extern struct {
    FieldId: Guid,
    OffsetInBytes: u32,
    SizeInBytes: u32,
};

pub const PERCEPTION_STATE_STREAM_TIMESTAMPS = extern struct {
    InputTimestampInQpcCounts: i64,
    AvailableTimestampInQpcCounts: i64,
};


//--------------------------------------------------------------------------------
// Section: Functions (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Unicode Aliases (0)
//--------------------------------------------------------------------------------
const thismodule = @This();
pub usingnamespace switch (@import("../zig.zig").unicode_mode) {
    .ansi => struct {
    },
    .wide => struct {
    },
    .unspecified => if (@import("builtin").is_test) struct {
    } else struct {
    },
};
//--------------------------------------------------------------------------------
// Section: Imports (1)
//--------------------------------------------------------------------------------
const Guid = @import("../zig.zig").Guid;

test {
    @setEvalBranchQuota(
        @import("std").meta.declarations(@This()).len * 3
    );

    // reference all the pub declarations
    if (!@import("builtin").is_test) return;
    inline for (@import("std").meta.declarations(@This())) |decl| {
        if (decl.is_pub) {
            _ = decl;
        }
    }
}
