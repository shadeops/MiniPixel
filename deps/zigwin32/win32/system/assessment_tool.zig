//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Types (19)
//--------------------------------------------------------------------------------
const CLSID_CInitiateWinSAT_Value = @import("../zig.zig").Guid.initString("489331dc-f5e0-4528-9fda-45331bf4a571");
pub const CLSID_CInitiateWinSAT = &CLSID_CInitiateWinSAT_Value;

const CLSID_CQueryWinSAT_Value = @import("../zig.zig").Guid.initString("f3bdfad3-f276-49e9-9b17-c474f48f0764");
pub const CLSID_CQueryWinSAT = &CLSID_CQueryWinSAT_Value;

const CLSID_CQueryAllWinSAT_Value = @import("../zig.zig").Guid.initString("05df8d13-c355-47f4-a11e-851b338cefb8");
pub const CLSID_CQueryAllWinSAT = &CLSID_CQueryAllWinSAT_Value;

const CLSID_CProvideWinSATVisuals_Value = @import("../zig.zig").Guid.initString("9f377d7e-e551-44f8-9f94-9db392b03b7b");
pub const CLSID_CProvideWinSATVisuals = &CLSID_CProvideWinSATVisuals_Value;

const CLSID_CAccessiblityWinSAT_Value = @import("../zig.zig").Guid.initString("6e18f9c6-a3eb-495a-89b7-956482e19f7a");
pub const CLSID_CAccessiblityWinSAT = &CLSID_CAccessiblityWinSAT_Value;

const CLSID_CQueryOEMWinSATCustomization_Value = @import("../zig.zig").Guid.initString("c47a41b7-b729-424f-9af9-5cb3934f2dfa");
pub const CLSID_CQueryOEMWinSATCustomization = &CLSID_CQueryOEMWinSATCustomization_Value;

pub const WINSAT_OEM_DATA_TYPE = enum(i32) {
    DATA_VALID = 0,
    DATA_NON_SYS_CONFIG_MATCH = 1,
    DATA_INVALID = 2,
    NO_DATA_SUPPLIED = 3,
};
pub const WINSAT_OEM_DATA_VALID = WINSAT_OEM_DATA_TYPE.DATA_VALID;
pub const WINSAT_OEM_DATA_NON_SYS_CONFIG_MATCH = WINSAT_OEM_DATA_TYPE.DATA_NON_SYS_CONFIG_MATCH;
pub const WINSAT_OEM_DATA_INVALID = WINSAT_OEM_DATA_TYPE.DATA_INVALID;
pub const WINSAT_OEM_NO_DATA_SUPPLIED = WINSAT_OEM_DATA_TYPE.NO_DATA_SUPPLIED;

pub const WINSAT_ASSESSMENT_STATE = enum(i32) {
    MIN = 0,
    // UNKNOWN = 0, this enum value conflicts with MIN
    VALID = 1,
    INCOHERENT_WITH_HARDWARE = 2,
    NOT_AVAILABLE = 3,
    INVALID = 4,
    // MAX = 4, this enum value conflicts with INVALID
};
pub const WINSAT_ASSESSMENT_STATE_MIN = WINSAT_ASSESSMENT_STATE.MIN;
pub const WINSAT_ASSESSMENT_STATE_UNKNOWN = WINSAT_ASSESSMENT_STATE.MIN;
pub const WINSAT_ASSESSMENT_STATE_VALID = WINSAT_ASSESSMENT_STATE.VALID;
pub const WINSAT_ASSESSMENT_STATE_INCOHERENT_WITH_HARDWARE = WINSAT_ASSESSMENT_STATE.INCOHERENT_WITH_HARDWARE;
pub const WINSAT_ASSESSMENT_STATE_NOT_AVAILABLE = WINSAT_ASSESSMENT_STATE.NOT_AVAILABLE;
pub const WINSAT_ASSESSMENT_STATE_INVALID = WINSAT_ASSESSMENT_STATE.INVALID;
pub const WINSAT_ASSESSMENT_STATE_MAX = WINSAT_ASSESSMENT_STATE.INVALID;

pub const WINSAT_ASSESSMENT_TYPE = enum(i32) {
    MEMORY = 0,
    CPU = 1,
    DISK = 2,
    D3D = 3,
    GRAPHICS = 4,
};
pub const WINSAT_ASSESSMENT_MEMORY = WINSAT_ASSESSMENT_TYPE.MEMORY;
pub const WINSAT_ASSESSMENT_CPU = WINSAT_ASSESSMENT_TYPE.CPU;
pub const WINSAT_ASSESSMENT_DISK = WINSAT_ASSESSMENT_TYPE.DISK;
pub const WINSAT_ASSESSMENT_D3D = WINSAT_ASSESSMENT_TYPE.D3D;
pub const WINSAT_ASSESSMENT_GRAPHICS = WINSAT_ASSESSMENT_TYPE.GRAPHICS;

pub const WINSAT_BITMAP_SIZE = enum(i32) {
    SMALL = 0,
    NORMAL = 1,
};
pub const WINSAT_BITMAP_SIZE_SMALL = WINSAT_BITMAP_SIZE.SMALL;
pub const WINSAT_BITMAP_SIZE_NORMAL = WINSAT_BITMAP_SIZE.NORMAL;

// TODO: this type is limited to platform 'windows6.0.6000'
const IID_IProvideWinSATAssessmentInfo_Value = @import("../zig.zig").Guid.initString("0cd1c380-52d3-4678-ac6f-e929e480be9e");
pub const IID_IProvideWinSATAssessmentInfo = &IID_IProvideWinSATAssessmentInfo_Value;
pub const IProvideWinSATAssessmentInfo = extern struct {
    pub const VTable = extern struct {
        base: IDispatch.VTable,
        // TODO: this function has a "SpecialName", should Zig do anything with this?
        get_Score: fn(
            self: *const IProvideWinSATAssessmentInfo,
            score: ?*f32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        // TODO: this function has a "SpecialName", should Zig do anything with this?
        get_Title: fn(
            self: *const IProvideWinSATAssessmentInfo,
            title: ?*?BSTR,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        // TODO: this function has a "SpecialName", should Zig do anything with this?
        get_Description: fn(
            self: *const IProvideWinSATAssessmentInfo,
            description: ?*?BSTR,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IDispatch.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IProvideWinSATAssessmentInfo_get_Score(self: *const T, score: ?*f32) callconv(.Inline) HRESULT {
            return @ptrCast(*const IProvideWinSATAssessmentInfo.VTable, self.vtable).get_Score(@ptrCast(*const IProvideWinSATAssessmentInfo, self), score);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IProvideWinSATAssessmentInfo_get_Title(self: *const T, title: ?*?BSTR) callconv(.Inline) HRESULT {
            return @ptrCast(*const IProvideWinSATAssessmentInfo.VTable, self.vtable).get_Title(@ptrCast(*const IProvideWinSATAssessmentInfo, self), title);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IProvideWinSATAssessmentInfo_get_Description(self: *const T, description: ?*?BSTR) callconv(.Inline) HRESULT {
            return @ptrCast(*const IProvideWinSATAssessmentInfo.VTable, self.vtable).get_Description(@ptrCast(*const IProvideWinSATAssessmentInfo, self), description);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

// TODO: this type is limited to platform 'windows6.0.6000'
const IID_IProvideWinSATResultsInfo_Value = @import("../zig.zig").Guid.initString("f8334d5d-568e-4075-875f-9df341506640");
pub const IID_IProvideWinSATResultsInfo = &IID_IProvideWinSATResultsInfo_Value;
pub const IProvideWinSATResultsInfo = extern struct {
    pub const VTable = extern struct {
        base: IDispatch.VTable,
        GetAssessmentInfo: fn(
            self: *const IProvideWinSATResultsInfo,
            assessment: WINSAT_ASSESSMENT_TYPE,
            ppinfo: ?*?*IProvideWinSATAssessmentInfo,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        // TODO: this function has a "SpecialName", should Zig do anything with this?
        get_AssessmentState: fn(
            self: *const IProvideWinSATResultsInfo,
            state: ?*WINSAT_ASSESSMENT_STATE,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        // TODO: this function has a "SpecialName", should Zig do anything with this?
        get_AssessmentDateTime: fn(
            self: *const IProvideWinSATResultsInfo,
            fileTime: ?*VARIANT,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        // TODO: this function has a "SpecialName", should Zig do anything with this?
        get_SystemRating: fn(
            self: *const IProvideWinSATResultsInfo,
            level: ?*f32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        // TODO: this function has a "SpecialName", should Zig do anything with this?
        get_RatingStateDesc: fn(
            self: *const IProvideWinSATResultsInfo,
            description: ?*?BSTR,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IDispatch.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IProvideWinSATResultsInfo_GetAssessmentInfo(self: *const T, assessment: WINSAT_ASSESSMENT_TYPE, ppinfo: ?*?*IProvideWinSATAssessmentInfo) callconv(.Inline) HRESULT {
            return @ptrCast(*const IProvideWinSATResultsInfo.VTable, self.vtable).GetAssessmentInfo(@ptrCast(*const IProvideWinSATResultsInfo, self), assessment, ppinfo);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IProvideWinSATResultsInfo_get_AssessmentState(self: *const T, state: ?*WINSAT_ASSESSMENT_STATE) callconv(.Inline) HRESULT {
            return @ptrCast(*const IProvideWinSATResultsInfo.VTable, self.vtable).get_AssessmentState(@ptrCast(*const IProvideWinSATResultsInfo, self), state);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IProvideWinSATResultsInfo_get_AssessmentDateTime(self: *const T, fileTime: ?*VARIANT) callconv(.Inline) HRESULT {
            return @ptrCast(*const IProvideWinSATResultsInfo.VTable, self.vtable).get_AssessmentDateTime(@ptrCast(*const IProvideWinSATResultsInfo, self), fileTime);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IProvideWinSATResultsInfo_get_SystemRating(self: *const T, level: ?*f32) callconv(.Inline) HRESULT {
            return @ptrCast(*const IProvideWinSATResultsInfo.VTable, self.vtable).get_SystemRating(@ptrCast(*const IProvideWinSATResultsInfo, self), level);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IProvideWinSATResultsInfo_get_RatingStateDesc(self: *const T, description: ?*?BSTR) callconv(.Inline) HRESULT {
            return @ptrCast(*const IProvideWinSATResultsInfo.VTable, self.vtable).get_RatingStateDesc(@ptrCast(*const IProvideWinSATResultsInfo, self), description);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

// TODO: this type is limited to platform 'windows6.0.6000'
const IID_IQueryRecentWinSATAssessment_Value = @import("../zig.zig").Guid.initString("f8ad5d1f-3b47-4bdc-9375-7c6b1da4eca7");
pub const IID_IQueryRecentWinSATAssessment = &IID_IQueryRecentWinSATAssessment_Value;
pub const IQueryRecentWinSATAssessment = extern struct {
    pub const VTable = extern struct {
        base: IDispatch.VTable,
        // TODO: this function has a "SpecialName", should Zig do anything with this?
        get_XML: fn(
            self: *const IQueryRecentWinSATAssessment,
            xPath: ?BSTR,
            namespaces: ?BSTR,
            ppDomNodeList: ?*?*IXMLDOMNodeList,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        // TODO: this function has a "SpecialName", should Zig do anything with this?
        get_Info: fn(
            self: *const IQueryRecentWinSATAssessment,
            ppWinSATAssessmentInfo: ?*?*IProvideWinSATResultsInfo,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IDispatch.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IQueryRecentWinSATAssessment_get_XML(self: *const T, xPath: ?BSTR, namespaces: ?BSTR, ppDomNodeList: ?*?*IXMLDOMNodeList) callconv(.Inline) HRESULT {
            return @ptrCast(*const IQueryRecentWinSATAssessment.VTable, self.vtable).get_XML(@ptrCast(*const IQueryRecentWinSATAssessment, self), xPath, namespaces, ppDomNodeList);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IQueryRecentWinSATAssessment_get_Info(self: *const T, ppWinSATAssessmentInfo: ?*?*IProvideWinSATResultsInfo) callconv(.Inline) HRESULT {
            return @ptrCast(*const IQueryRecentWinSATAssessment.VTable, self.vtable).get_Info(@ptrCast(*const IQueryRecentWinSATAssessment, self), ppWinSATAssessmentInfo);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

// TODO: this type is limited to platform 'windows6.0.6000'
const IID_IProvideWinSATVisuals_Value = @import("../zig.zig").Guid.initString("a9f4ade0-871a-42a3-b813-3078d25162c9");
pub const IID_IProvideWinSATVisuals = &IID_IProvideWinSATVisuals_Value;
pub const IProvideWinSATVisuals = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        // TODO: this function has a "SpecialName", should Zig do anything with this?
        get_Bitmap: fn(
            self: *const IProvideWinSATVisuals,
            bitmapSize: WINSAT_BITMAP_SIZE,
            state: WINSAT_ASSESSMENT_STATE,
            rating: f32,
            pBitmap: ?*?HBITMAP,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IProvideWinSATVisuals_get_Bitmap(self: *const T, bitmapSize: WINSAT_BITMAP_SIZE, state: WINSAT_ASSESSMENT_STATE, rating: f32, pBitmap: ?*?HBITMAP) callconv(.Inline) HRESULT {
            return @ptrCast(*const IProvideWinSATVisuals.VTable, self.vtable).get_Bitmap(@ptrCast(*const IProvideWinSATVisuals, self), bitmapSize, state, rating, pBitmap);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

// TODO: this type is limited to platform 'windows6.0.6000'
const IID_IQueryAllWinSATAssessments_Value = @import("../zig.zig").Guid.initString("0b89ed1d-6398-4fea-87fc-567d8d19176f");
pub const IID_IQueryAllWinSATAssessments = &IID_IQueryAllWinSATAssessments_Value;
pub const IQueryAllWinSATAssessments = extern struct {
    pub const VTable = extern struct {
        base: IDispatch.VTable,
        // TODO: this function has a "SpecialName", should Zig do anything with this?
        get_AllXML: fn(
            self: *const IQueryAllWinSATAssessments,
            xPath: ?BSTR,
            namespaces: ?BSTR,
            ppDomNodeList: ?*?*IXMLDOMNodeList,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IDispatch.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IQueryAllWinSATAssessments_get_AllXML(self: *const T, xPath: ?BSTR, namespaces: ?BSTR, ppDomNodeList: ?*?*IXMLDOMNodeList) callconv(.Inline) HRESULT {
            return @ptrCast(*const IQueryAllWinSATAssessments.VTable, self.vtable).get_AllXML(@ptrCast(*const IQueryAllWinSATAssessments, self), xPath, namespaces, ppDomNodeList);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

// TODO: this type is limited to platform 'windows6.0.6000'
const IID_IWinSATInitiateEvents_Value = @import("../zig.zig").Guid.initString("262a1918-ba0d-41d5-92c2-fab4633ee74f");
pub const IID_IWinSATInitiateEvents = &IID_IWinSATInitiateEvents_Value;
pub const IWinSATInitiateEvents = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        WinSATComplete: fn(
            self: *const IWinSATInitiateEvents,
            hresult: HRESULT,
            strDescription: ?[*:0]const u16,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        WinSATUpdate: fn(
            self: *const IWinSATInitiateEvents,
            uCurrentTick: u32,
            uTickTotal: u32,
            strCurrentState: ?[*:0]const u16,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IWinSATInitiateEvents_WinSATComplete(self: *const T, hresult: HRESULT, strDescription: ?[*:0]const u16) callconv(.Inline) HRESULT {
            return @ptrCast(*const IWinSATInitiateEvents.VTable, self.vtable).WinSATComplete(@ptrCast(*const IWinSATInitiateEvents, self), hresult, strDescription);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IWinSATInitiateEvents_WinSATUpdate(self: *const T, uCurrentTick: u32, uTickTotal: u32, strCurrentState: ?[*:0]const u16) callconv(.Inline) HRESULT {
            return @ptrCast(*const IWinSATInitiateEvents.VTable, self.vtable).WinSATUpdate(@ptrCast(*const IWinSATInitiateEvents, self), uCurrentTick, uTickTotal, strCurrentState);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

// TODO: this type is limited to platform 'windows6.0.6000'
const IID_IInitiateWinSATAssessment_Value = @import("../zig.zig").Guid.initString("d983fc50-f5bf-49d5-b5ed-cccb18aa7fc1");
pub const IID_IInitiateWinSATAssessment = &IID_IInitiateWinSATAssessment_Value;
pub const IInitiateWinSATAssessment = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        InitiateAssessment: fn(
            self: *const IInitiateWinSATAssessment,
            cmdLine: ?[*:0]const u16,
            pCallbacks: ?*IWinSATInitiateEvents,
            callerHwnd: ?HWND,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        InitiateFormalAssessment: fn(
            self: *const IInitiateWinSATAssessment,
            pCallbacks: ?*IWinSATInitiateEvents,
            callerHwnd: ?HWND,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        CancelAssessment: fn(
            self: *const IInitiateWinSATAssessment,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IInitiateWinSATAssessment_InitiateAssessment(self: *const T, cmdLine: ?[*:0]const u16, pCallbacks: ?*IWinSATInitiateEvents, callerHwnd: ?HWND) callconv(.Inline) HRESULT {
            return @ptrCast(*const IInitiateWinSATAssessment.VTable, self.vtable).InitiateAssessment(@ptrCast(*const IInitiateWinSATAssessment, self), cmdLine, pCallbacks, callerHwnd);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IInitiateWinSATAssessment_InitiateFormalAssessment(self: *const T, pCallbacks: ?*IWinSATInitiateEvents, callerHwnd: ?HWND) callconv(.Inline) HRESULT {
            return @ptrCast(*const IInitiateWinSATAssessment.VTable, self.vtable).InitiateFormalAssessment(@ptrCast(*const IInitiateWinSATAssessment, self), pCallbacks, callerHwnd);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IInitiateWinSATAssessment_CancelAssessment(self: *const T) callconv(.Inline) HRESULT {
            return @ptrCast(*const IInitiateWinSATAssessment.VTable, self.vtable).CancelAssessment(@ptrCast(*const IInitiateWinSATAssessment, self));
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

const IID_IAccessibleWinSAT_Value = @import("../zig.zig").Guid.initString("30e6018a-94a8-4ff8-a69a-71b67413f07b");
pub const IID_IAccessibleWinSAT = &IID_IAccessibleWinSAT_Value;
pub const IAccessibleWinSAT = extern struct {
    pub const VTable = extern struct {
        base: IAccessible.VTable,
        SetAccessiblityData: fn(
            self: *const IAccessibleWinSAT,
            wsName: ?[*:0]const u16,
            wsValue: ?[*:0]const u16,
            wsDesc: ?[*:0]const u16,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IAccessible.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IAccessibleWinSAT_SetAccessiblityData(self: *const T, wsName: ?[*:0]const u16, wsValue: ?[*:0]const u16, wsDesc: ?[*:0]const u16) callconv(.Inline) HRESULT {
            return @ptrCast(*const IAccessibleWinSAT.VTable, self.vtable).SetAccessiblityData(@ptrCast(*const IAccessibleWinSAT, self), wsName, wsValue, wsDesc);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

const IID_IQueryOEMWinSATCustomization_Value = @import("../zig.zig").Guid.initString("bc9a6a9f-ad4e-420e-9953-b34671e9df22");
pub const IID_IQueryOEMWinSATCustomization = &IID_IQueryOEMWinSATCustomization_Value;
pub const IQueryOEMWinSATCustomization = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        GetOEMPrePopulationInfo: fn(
            self: *const IQueryOEMWinSATCustomization,
            state: ?*WINSAT_OEM_DATA_TYPE,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IQueryOEMWinSATCustomization_GetOEMPrePopulationInfo(self: *const T, state: ?*WINSAT_OEM_DATA_TYPE) callconv(.Inline) HRESULT {
            return @ptrCast(*const IQueryOEMWinSATCustomization.VTable, self.vtable).GetOEMPrePopulationInfo(@ptrCast(*const IQueryOEMWinSATCustomization, self), state);
        }
    };}
    pub usingnamespace MethodMixin(@This());
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
// Section: Imports (10)
//--------------------------------------------------------------------------------
const BSTR = @import("../foundation.zig").BSTR;
const HBITMAP = @import("../graphics/gdi.zig").HBITMAP;
const HRESULT = @import("../foundation.zig").HRESULT;
const HWND = @import("../foundation.zig").HWND;
const IAccessible = @import("../ui/accessibility.zig").IAccessible;
const IDispatch = @import("../system/com.zig").IDispatch;
const IUnknown = @import("../system/com.zig").IUnknown;
const IXMLDOMNodeList = @import("../data/xml/ms_xml.zig").IXMLDOMNodeList;
const PWSTR = @import("../foundation.zig").PWSTR;
const VARIANT = @import("../system/com.zig").VARIANT;

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
