//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (3)
//--------------------------------------------------------------------------------
pub const UI_ALL_COMMANDS = @as(u32, 0);
pub const UI_COLLECTION_INVALIDINDEX = @as(u32, 4294967295);
pub const LIBID_UIRibbon = Guid.initString("942f35c2-e83b-45ef-b085-ac295dd63d5b");

//--------------------------------------------------------------------------------
// Section: Types (33)
//--------------------------------------------------------------------------------
const CLSID_UIRibbonFramework_Value = @import("../zig.zig").Guid.initString("926749fa-2615-4987-8845-c33e65f2b957");
pub const CLSID_UIRibbonFramework = &CLSID_UIRibbonFramework_Value;

const CLSID_UIRibbonImageFromBitmapFactory_Value = @import("../zig.zig").Guid.initString("0f7434b6-59b6-4250-999e-d168d6ae4293");
pub const CLSID_UIRibbonImageFromBitmapFactory = &CLSID_UIRibbonImageFromBitmapFactory_Value;

pub const UI_CONTEXTAVAILABILITY = enum(i32) {
    NOTAVAILABLE = 0,
    AVAILABLE = 1,
    ACTIVE = 2,
};
pub const UI_CONTEXTAVAILABILITY_NOTAVAILABLE = UI_CONTEXTAVAILABILITY.NOTAVAILABLE;
pub const UI_CONTEXTAVAILABILITY_AVAILABLE = UI_CONTEXTAVAILABILITY.AVAILABLE;
pub const UI_CONTEXTAVAILABILITY_ACTIVE = UI_CONTEXTAVAILABILITY.ACTIVE;

pub const UI_FONTPROPERTIES = enum(i32) {
    NOTAVAILABLE = 0,
    NOTSET = 1,
    SET = 2,
};
pub const UI_FONTPROPERTIES_NOTAVAILABLE = UI_FONTPROPERTIES.NOTAVAILABLE;
pub const UI_FONTPROPERTIES_NOTSET = UI_FONTPROPERTIES.NOTSET;
pub const UI_FONTPROPERTIES_SET = UI_FONTPROPERTIES.SET;

pub const UI_FONTVERTICALPOSITION = enum(i32) {
    NOTAVAILABLE = 0,
    NOTSET = 1,
    SUPERSCRIPT = 2,
    SUBSCRIPT = 3,
};
pub const UI_FONTVERTICALPOSITION_NOTAVAILABLE = UI_FONTVERTICALPOSITION.NOTAVAILABLE;
pub const UI_FONTVERTICALPOSITION_NOTSET = UI_FONTVERTICALPOSITION.NOTSET;
pub const UI_FONTVERTICALPOSITION_SUPERSCRIPT = UI_FONTVERTICALPOSITION.SUPERSCRIPT;
pub const UI_FONTVERTICALPOSITION_SUBSCRIPT = UI_FONTVERTICALPOSITION.SUBSCRIPT;

pub const UI_FONTUNDERLINE = enum(i32) {
    NOTAVAILABLE = 0,
    NOTSET = 1,
    SET = 2,
};
pub const UI_FONTUNDERLINE_NOTAVAILABLE = UI_FONTUNDERLINE.NOTAVAILABLE;
pub const UI_FONTUNDERLINE_NOTSET = UI_FONTUNDERLINE.NOTSET;
pub const UI_FONTUNDERLINE_SET = UI_FONTUNDERLINE.SET;

pub const UI_FONTDELTASIZE = enum(i32) {
    GROW = 0,
    SHRINK = 1,
};
pub const UI_FONTDELTASIZE_GROW = UI_FONTDELTASIZE.GROW;
pub const UI_FONTDELTASIZE_SHRINK = UI_FONTDELTASIZE.SHRINK;

pub const UI_CONTROLDOCK = enum(i32) {
    TOP = 1,
    BOTTOM = 3,
};
pub const UI_CONTROLDOCK_TOP = UI_CONTROLDOCK.TOP;
pub const UI_CONTROLDOCK_BOTTOM = UI_CONTROLDOCK.BOTTOM;

pub const UI_SWATCHCOLORTYPE = enum(i32) {
    NOCOLOR = 0,
    AUTOMATIC = 1,
    RGB = 2,
};
pub const UI_SWATCHCOLORTYPE_NOCOLOR = UI_SWATCHCOLORTYPE.NOCOLOR;
pub const UI_SWATCHCOLORTYPE_AUTOMATIC = UI_SWATCHCOLORTYPE.AUTOMATIC;
pub const UI_SWATCHCOLORTYPE_RGB = UI_SWATCHCOLORTYPE.RGB;

pub const UI_SWATCHCOLORMODE = enum(i32) {
    NORMAL = 0,
    MONOCHROME = 1,
};
pub const UI_SWATCHCOLORMODE_NORMAL = UI_SWATCHCOLORMODE.NORMAL;
pub const UI_SWATCHCOLORMODE_MONOCHROME = UI_SWATCHCOLORMODE.MONOCHROME;

pub const UI_EVENTTYPE = enum(i32) {
    ApplicationMenuOpened = 0,
    RibbonMinimized = 1,
    RibbonExpanded = 2,
    ApplicationModeSwitched = 3,
    TabActivated = 4,
    MenuOpened = 5,
    CommandExecuted = 6,
    TooltipShown = 7,
};
pub const UI_EVENTTYPE_ApplicationMenuOpened = UI_EVENTTYPE.ApplicationMenuOpened;
pub const UI_EVENTTYPE_RibbonMinimized = UI_EVENTTYPE.RibbonMinimized;
pub const UI_EVENTTYPE_RibbonExpanded = UI_EVENTTYPE.RibbonExpanded;
pub const UI_EVENTTYPE_ApplicationModeSwitched = UI_EVENTTYPE.ApplicationModeSwitched;
pub const UI_EVENTTYPE_TabActivated = UI_EVENTTYPE.TabActivated;
pub const UI_EVENTTYPE_MenuOpened = UI_EVENTTYPE.MenuOpened;
pub const UI_EVENTTYPE_CommandExecuted = UI_EVENTTYPE.CommandExecuted;
pub const UI_EVENTTYPE_TooltipShown = UI_EVENTTYPE.TooltipShown;

pub const UI_EVENTLOCATION = enum(i32) {
    Ribbon = 0,
    QAT = 1,
    ApplicationMenu = 2,
    ContextPopup = 3,
};
pub const UI_EVENTLOCATION_Ribbon = UI_EVENTLOCATION.Ribbon;
pub const UI_EVENTLOCATION_QAT = UI_EVENTLOCATION.QAT;
pub const UI_EVENTLOCATION_ApplicationMenu = UI_EVENTLOCATION.ApplicationMenu;
pub const UI_EVENTLOCATION_ContextPopup = UI_EVENTLOCATION.ContextPopup;

// TODO: this type is limited to platform 'windows6.1'
const IID_IUISimplePropertySet_Value = @import("../zig.zig").Guid.initString("c205bb48-5b1c-4219-a106-15bd0a5f24e2");
pub const IID_IUISimplePropertySet = &IID_IUISimplePropertySet_Value;
pub const IUISimplePropertySet = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        GetValue: fn(
            self: *const IUISimplePropertySet,
            key: ?*const PROPERTYKEY,
            value: ?*PROPVARIANT,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IUISimplePropertySet_GetValue(self: *const T, key: ?*const PROPERTYKEY, value: ?*PROPVARIANT) callconv(.Inline) HRESULT {
            return @ptrCast(*const IUISimplePropertySet.VTable, self.vtable).GetValue(@ptrCast(*const IUISimplePropertySet, self), key, value);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

// TODO: this type is limited to platform 'windows6.1'
const IID_IUIRibbon_Value = @import("../zig.zig").Guid.initString("803982ab-370a-4f7e-a9e7-8784036a6e26");
pub const IID_IUIRibbon = &IID_IUIRibbon_Value;
pub const IUIRibbon = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        GetHeight: fn(
            self: *const IUIRibbon,
            cy: ?*u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        LoadSettingsFromStream: fn(
            self: *const IUIRibbon,
            pStream: ?*IStream,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        SaveSettingsToStream: fn(
            self: *const IUIRibbon,
            pStream: ?*IStream,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IUIRibbon_GetHeight(self: *const T, cy: ?*u32) callconv(.Inline) HRESULT {
            return @ptrCast(*const IUIRibbon.VTable, self.vtable).GetHeight(@ptrCast(*const IUIRibbon, self), cy);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IUIRibbon_LoadSettingsFromStream(self: *const T, pStream: ?*IStream) callconv(.Inline) HRESULT {
            return @ptrCast(*const IUIRibbon.VTable, self.vtable).LoadSettingsFromStream(@ptrCast(*const IUIRibbon, self), pStream);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IUIRibbon_SaveSettingsToStream(self: *const T, pStream: ?*IStream) callconv(.Inline) HRESULT {
            return @ptrCast(*const IUIRibbon.VTable, self.vtable).SaveSettingsToStream(@ptrCast(*const IUIRibbon, self), pStream);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

pub const UI_INVALIDATIONS = enum(i32) {
    STATE = 1,
    VALUE = 2,
    PROPERTY = 4,
    ALLPROPERTIES = 8,
};
pub const UI_INVALIDATIONS_STATE = UI_INVALIDATIONS.STATE;
pub const UI_INVALIDATIONS_VALUE = UI_INVALIDATIONS.VALUE;
pub const UI_INVALIDATIONS_PROPERTY = UI_INVALIDATIONS.PROPERTY;
pub const UI_INVALIDATIONS_ALLPROPERTIES = UI_INVALIDATIONS.ALLPROPERTIES;

// TODO: this type is limited to platform 'windows6.1'
const IID_IUIFramework_Value = @import("../zig.zig").Guid.initString("f4f0385d-6872-43a8-ad09-4c339cb3f5c5");
pub const IID_IUIFramework = &IID_IUIFramework_Value;
pub const IUIFramework = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        Initialize: fn(
            self: *const IUIFramework,
            frameWnd: ?HWND,
            application: ?*IUIApplication,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        Destroy: fn(
            self: *const IUIFramework,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        LoadUI: fn(
            self: *const IUIFramework,
            instance: ?HINSTANCE,
            resourceName: ?[*:0]const u16,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetView: fn(
            self: *const IUIFramework,
            viewId: u32,
            riid: ?*const Guid,
            ppv: ?*?*anyopaque,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetUICommandProperty: fn(
            self: *const IUIFramework,
            commandId: u32,
            key: ?*const PROPERTYKEY,
            value: ?*PROPVARIANT,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        SetUICommandProperty: fn(
            self: *const IUIFramework,
            commandId: u32,
            key: ?*const PROPERTYKEY,
            value: ?*const PROPVARIANT,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        InvalidateUICommand: fn(
            self: *const IUIFramework,
            commandId: u32,
            flags: UI_INVALIDATIONS,
            key: ?*const PROPERTYKEY,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        FlushPendingInvalidations: fn(
            self: *const IUIFramework,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        SetModes: fn(
            self: *const IUIFramework,
            iModes: i32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IUIFramework_Initialize(self: *const T, frameWnd: ?HWND, application: ?*IUIApplication) callconv(.Inline) HRESULT {
            return @ptrCast(*const IUIFramework.VTable, self.vtable).Initialize(@ptrCast(*const IUIFramework, self), frameWnd, application);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IUIFramework_Destroy(self: *const T) callconv(.Inline) HRESULT {
            return @ptrCast(*const IUIFramework.VTable, self.vtable).Destroy(@ptrCast(*const IUIFramework, self));
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IUIFramework_LoadUI(self: *const T, instance: ?HINSTANCE, resourceName: ?[*:0]const u16) callconv(.Inline) HRESULT {
            return @ptrCast(*const IUIFramework.VTable, self.vtable).LoadUI(@ptrCast(*const IUIFramework, self), instance, resourceName);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IUIFramework_GetView(self: *const T, viewId: u32, riid: ?*const Guid, ppv: ?*?*anyopaque) callconv(.Inline) HRESULT {
            return @ptrCast(*const IUIFramework.VTable, self.vtable).GetView(@ptrCast(*const IUIFramework, self), viewId, riid, ppv);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IUIFramework_GetUICommandProperty(self: *const T, commandId: u32, key: ?*const PROPERTYKEY, value: ?*PROPVARIANT) callconv(.Inline) HRESULT {
            return @ptrCast(*const IUIFramework.VTable, self.vtable).GetUICommandProperty(@ptrCast(*const IUIFramework, self), commandId, key, value);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IUIFramework_SetUICommandProperty(self: *const T, commandId: u32, key: ?*const PROPERTYKEY, value: ?*const PROPVARIANT) callconv(.Inline) HRESULT {
            return @ptrCast(*const IUIFramework.VTable, self.vtable).SetUICommandProperty(@ptrCast(*const IUIFramework, self), commandId, key, value);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IUIFramework_InvalidateUICommand(self: *const T, commandId: u32, flags: UI_INVALIDATIONS, key: ?*const PROPERTYKEY) callconv(.Inline) HRESULT {
            return @ptrCast(*const IUIFramework.VTable, self.vtable).InvalidateUICommand(@ptrCast(*const IUIFramework, self), commandId, flags, key);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IUIFramework_FlushPendingInvalidations(self: *const T) callconv(.Inline) HRESULT {
            return @ptrCast(*const IUIFramework.VTable, self.vtable).FlushPendingInvalidations(@ptrCast(*const IUIFramework, self));
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IUIFramework_SetModes(self: *const T, iModes: i32) callconv(.Inline) HRESULT {
            return @ptrCast(*const IUIFramework.VTable, self.vtable).SetModes(@ptrCast(*const IUIFramework, self), iModes);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

pub const UI_EVENTPARAMS_COMMAND = extern struct {
    CommandID: u32,
    CommandName: ?[*:0]const u16,
    ParentCommandID: u32,
    ParentCommandName: ?[*:0]const u16,
    SelectionIndex: u32,
    Location: UI_EVENTLOCATION,
};

pub const UI_EVENTPARAMS = extern struct {
    EventType: UI_EVENTTYPE,
    Anonymous: extern union {
        Modes: i32,
        Params: UI_EVENTPARAMS_COMMAND,
    },
};

// TODO: this type is limited to platform 'windows8.0'
const IID_IUIEventLogger_Value = @import("../zig.zig").Guid.initString("ec3e1034-dbf4-41a1-95d5-03e0f1026e05");
pub const IID_IUIEventLogger = &IID_IUIEventLogger_Value;
pub const IUIEventLogger = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        OnUIEvent: fn(
            self: *const IUIEventLogger,
            pEventParams: ?*UI_EVENTPARAMS,
        ) callconv(@import("std").os.windows.WINAPI) void,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IUIEventLogger_OnUIEvent(self: *const T, pEventParams: ?*UI_EVENTPARAMS) callconv(.Inline) void {
            return @ptrCast(*const IUIEventLogger.VTable, self.vtable).OnUIEvent(@ptrCast(*const IUIEventLogger, self), pEventParams);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

// TODO: this type is limited to platform 'windows8.0'
const IID_IUIEventingManager_Value = @import("../zig.zig").Guid.initString("3be6ea7f-9a9b-4198-9368-9b0f923bd534");
pub const IID_IUIEventingManager = &IID_IUIEventingManager_Value;
pub const IUIEventingManager = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        SetEventLogger: fn(
            self: *const IUIEventingManager,
            eventLogger: ?*IUIEventLogger,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IUIEventingManager_SetEventLogger(self: *const T, eventLogger: ?*IUIEventLogger) callconv(.Inline) HRESULT {
            return @ptrCast(*const IUIEventingManager.VTable, self.vtable).SetEventLogger(@ptrCast(*const IUIEventingManager, self), eventLogger);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

// TODO: this type is limited to platform 'windows6.1'
const IID_IUIContextualUI_Value = @import("../zig.zig").Guid.initString("eea11f37-7c46-437c-8e55-b52122b29293");
pub const IID_IUIContextualUI = &IID_IUIContextualUI_Value;
pub const IUIContextualUI = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        ShowAtLocation: fn(
            self: *const IUIContextualUI,
            x: i32,
            y: i32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IUIContextualUI_ShowAtLocation(self: *const T, x: i32, y: i32) callconv(.Inline) HRESULT {
            return @ptrCast(*const IUIContextualUI.VTable, self.vtable).ShowAtLocation(@ptrCast(*const IUIContextualUI, self), x, y);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

// TODO: this type is limited to platform 'windows6.1'
const IID_IUICollection_Value = @import("../zig.zig").Guid.initString("df4f45bf-6f9d-4dd7-9d68-d8f9cd18c4db");
pub const IID_IUICollection = &IID_IUICollection_Value;
pub const IUICollection = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        GetCount: fn(
            self: *const IUICollection,
            count: ?*u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetItem: fn(
            self: *const IUICollection,
            index: u32,
            item: ?*?*IUnknown,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        Add: fn(
            self: *const IUICollection,
            item: ?*IUnknown,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        Insert: fn(
            self: *const IUICollection,
            index: u32,
            item: ?*IUnknown,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        RemoveAt: fn(
            self: *const IUICollection,
            index: u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        Replace: fn(
            self: *const IUICollection,
            indexReplaced: u32,
            itemReplaceWith: ?*IUnknown,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        Clear: fn(
            self: *const IUICollection,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IUICollection_GetCount(self: *const T, count: ?*u32) callconv(.Inline) HRESULT {
            return @ptrCast(*const IUICollection.VTable, self.vtable).GetCount(@ptrCast(*const IUICollection, self), count);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IUICollection_GetItem(self: *const T, index: u32, item: ?*?*IUnknown) callconv(.Inline) HRESULT {
            return @ptrCast(*const IUICollection.VTable, self.vtable).GetItem(@ptrCast(*const IUICollection, self), index, item);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IUICollection_Add(self: *const T, item: ?*IUnknown) callconv(.Inline) HRESULT {
            return @ptrCast(*const IUICollection.VTable, self.vtable).Add(@ptrCast(*const IUICollection, self), item);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IUICollection_Insert(self: *const T, index: u32, item: ?*IUnknown) callconv(.Inline) HRESULT {
            return @ptrCast(*const IUICollection.VTable, self.vtable).Insert(@ptrCast(*const IUICollection, self), index, item);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IUICollection_RemoveAt(self: *const T, index: u32) callconv(.Inline) HRESULT {
            return @ptrCast(*const IUICollection.VTable, self.vtable).RemoveAt(@ptrCast(*const IUICollection, self), index);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IUICollection_Replace(self: *const T, indexReplaced: u32, itemReplaceWith: ?*IUnknown) callconv(.Inline) HRESULT {
            return @ptrCast(*const IUICollection.VTable, self.vtable).Replace(@ptrCast(*const IUICollection, self), indexReplaced, itemReplaceWith);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IUICollection_Clear(self: *const T) callconv(.Inline) HRESULT {
            return @ptrCast(*const IUICollection.VTable, self.vtable).Clear(@ptrCast(*const IUICollection, self));
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

pub const UI_COLLECTIONCHANGE = enum(i32) {
    INSERT = 0,
    REMOVE = 1,
    REPLACE = 2,
    RESET = 3,
};
pub const UI_COLLECTIONCHANGE_INSERT = UI_COLLECTIONCHANGE.INSERT;
pub const UI_COLLECTIONCHANGE_REMOVE = UI_COLLECTIONCHANGE.REMOVE;
pub const UI_COLLECTIONCHANGE_REPLACE = UI_COLLECTIONCHANGE.REPLACE;
pub const UI_COLLECTIONCHANGE_RESET = UI_COLLECTIONCHANGE.RESET;

// TODO: this type is limited to platform 'windows6.1'
const IID_IUICollectionChangedEvent_Value = @import("../zig.zig").Guid.initString("6502ae91-a14d-44b5-bbd0-62aacc581d52");
pub const IID_IUICollectionChangedEvent = &IID_IUICollectionChangedEvent_Value;
pub const IUICollectionChangedEvent = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        OnChanged: fn(
            self: *const IUICollectionChangedEvent,
            action: UI_COLLECTIONCHANGE,
            oldIndex: u32,
            oldItem: ?*IUnknown,
            newIndex: u32,
            newItem: ?*IUnknown,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IUICollectionChangedEvent_OnChanged(self: *const T, action: UI_COLLECTIONCHANGE, oldIndex: u32, oldItem: ?*IUnknown, newIndex: u32, newItem: ?*IUnknown) callconv(.Inline) HRESULT {
            return @ptrCast(*const IUICollectionChangedEvent.VTable, self.vtable).OnChanged(@ptrCast(*const IUICollectionChangedEvent, self), action, oldIndex, oldItem, newIndex, newItem);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

pub const UI_EXECUTIONVERB = enum(i32) {
    EXECUTE = 0,
    PREVIEW = 1,
    CANCELPREVIEW = 2,
};
pub const UI_EXECUTIONVERB_EXECUTE = UI_EXECUTIONVERB.EXECUTE;
pub const UI_EXECUTIONVERB_PREVIEW = UI_EXECUTIONVERB.PREVIEW;
pub const UI_EXECUTIONVERB_CANCELPREVIEW = UI_EXECUTIONVERB.CANCELPREVIEW;

// TODO: this type is limited to platform 'windows6.1'
const IID_IUICommandHandler_Value = @import("../zig.zig").Guid.initString("75ae0a2d-dc03-4c9f-8883-069660d0beb6");
pub const IID_IUICommandHandler = &IID_IUICommandHandler_Value;
pub const IUICommandHandler = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        Execute: fn(
            self: *const IUICommandHandler,
            commandId: u32,
            verb: UI_EXECUTIONVERB,
            key: ?*const PROPERTYKEY,
            currentValue: ?*const PROPVARIANT,
            commandExecutionProperties: ?*IUISimplePropertySet,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        UpdateProperty: fn(
            self: *const IUICommandHandler,
            commandId: u32,
            key: ?*const PROPERTYKEY,
            currentValue: ?*const PROPVARIANT,
            newValue: ?*PROPVARIANT,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IUICommandHandler_Execute(self: *const T, commandId: u32, verb: UI_EXECUTIONVERB, key: ?*const PROPERTYKEY, currentValue: ?*const PROPVARIANT, commandExecutionProperties: ?*IUISimplePropertySet) callconv(.Inline) HRESULT {
            return @ptrCast(*const IUICommandHandler.VTable, self.vtable).Execute(@ptrCast(*const IUICommandHandler, self), commandId, verb, key, currentValue, commandExecutionProperties);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IUICommandHandler_UpdateProperty(self: *const T, commandId: u32, key: ?*const PROPERTYKEY, currentValue: ?*const PROPVARIANT, newValue: ?*PROPVARIANT) callconv(.Inline) HRESULT {
            return @ptrCast(*const IUICommandHandler.VTable, self.vtable).UpdateProperty(@ptrCast(*const IUICommandHandler, self), commandId, key, currentValue, newValue);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

pub const UI_COMMANDTYPE = enum(i32) {
    UNKNOWN = 0,
    GROUP = 1,
    ACTION = 2,
    ANCHOR = 3,
    CONTEXT = 4,
    COLLECTION = 5,
    COMMANDCOLLECTION = 6,
    DECIMAL = 7,
    BOOLEAN = 8,
    FONT = 9,
    RECENTITEMS = 10,
    COLORANCHOR = 11,
    COLORCOLLECTION = 12,
};
pub const UI_COMMANDTYPE_UNKNOWN = UI_COMMANDTYPE.UNKNOWN;
pub const UI_COMMANDTYPE_GROUP = UI_COMMANDTYPE.GROUP;
pub const UI_COMMANDTYPE_ACTION = UI_COMMANDTYPE.ACTION;
pub const UI_COMMANDTYPE_ANCHOR = UI_COMMANDTYPE.ANCHOR;
pub const UI_COMMANDTYPE_CONTEXT = UI_COMMANDTYPE.CONTEXT;
pub const UI_COMMANDTYPE_COLLECTION = UI_COMMANDTYPE.COLLECTION;
pub const UI_COMMANDTYPE_COMMANDCOLLECTION = UI_COMMANDTYPE.COMMANDCOLLECTION;
pub const UI_COMMANDTYPE_DECIMAL = UI_COMMANDTYPE.DECIMAL;
pub const UI_COMMANDTYPE_BOOLEAN = UI_COMMANDTYPE.BOOLEAN;
pub const UI_COMMANDTYPE_FONT = UI_COMMANDTYPE.FONT;
pub const UI_COMMANDTYPE_RECENTITEMS = UI_COMMANDTYPE.RECENTITEMS;
pub const UI_COMMANDTYPE_COLORANCHOR = UI_COMMANDTYPE.COLORANCHOR;
pub const UI_COMMANDTYPE_COLORCOLLECTION = UI_COMMANDTYPE.COLORCOLLECTION;

pub const UI_VIEWTYPE = enum(i32) {
    N = 1,
};
pub const UI_VIEWTYPE_RIBBON = UI_VIEWTYPE.N;

pub const UI_VIEWVERB = enum(i32) {
    CREATE = 0,
    DESTROY = 1,
    SIZE = 2,
    ERROR = 3,
};
pub const UI_VIEWVERB_CREATE = UI_VIEWVERB.CREATE;
pub const UI_VIEWVERB_DESTROY = UI_VIEWVERB.DESTROY;
pub const UI_VIEWVERB_SIZE = UI_VIEWVERB.SIZE;
pub const UI_VIEWVERB_ERROR = UI_VIEWVERB.ERROR;

// TODO: this type is limited to platform 'windows6.1'
const IID_IUIApplication_Value = @import("../zig.zig").Guid.initString("d428903c-729a-491d-910d-682a08ff2522");
pub const IID_IUIApplication = &IID_IUIApplication_Value;
pub const IUIApplication = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        OnViewChanged: fn(
            self: *const IUIApplication,
            viewId: u32,
            typeID: UI_VIEWTYPE,
            view: ?*IUnknown,
            verb: UI_VIEWVERB,
            uReasonCode: i32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        OnCreateUICommand: fn(
            self: *const IUIApplication,
            commandId: u32,
            typeID: UI_COMMANDTYPE,
            commandHandler: ?*?*IUICommandHandler,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        OnDestroyUICommand: fn(
            self: *const IUIApplication,
            commandId: u32,
            typeID: UI_COMMANDTYPE,
            commandHandler: ?*IUICommandHandler,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IUIApplication_OnViewChanged(self: *const T, viewId: u32, typeID: UI_VIEWTYPE, view: ?*IUnknown, verb: UI_VIEWVERB, uReasonCode: i32) callconv(.Inline) HRESULT {
            return @ptrCast(*const IUIApplication.VTable, self.vtable).OnViewChanged(@ptrCast(*const IUIApplication, self), viewId, typeID, view, verb, uReasonCode);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IUIApplication_OnCreateUICommand(self: *const T, commandId: u32, typeID: UI_COMMANDTYPE, commandHandler: ?*?*IUICommandHandler) callconv(.Inline) HRESULT {
            return @ptrCast(*const IUIApplication.VTable, self.vtable).OnCreateUICommand(@ptrCast(*const IUIApplication, self), commandId, typeID, commandHandler);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IUIApplication_OnDestroyUICommand(self: *const T, commandId: u32, typeID: UI_COMMANDTYPE, commandHandler: ?*IUICommandHandler) callconv(.Inline) HRESULT {
            return @ptrCast(*const IUIApplication.VTable, self.vtable).OnDestroyUICommand(@ptrCast(*const IUIApplication, self), commandId, typeID, commandHandler);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

// TODO: this type is limited to platform 'windows6.1'
const IID_IUIImage_Value = @import("../zig.zig").Guid.initString("23c8c838-4de6-436b-ab01-5554bb7c30dd");
pub const IID_IUIImage = &IID_IUIImage_Value;
pub const IUIImage = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        GetBitmap: fn(
            self: *const IUIImage,
            bitmap: ?*?HBITMAP,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IUIImage_GetBitmap(self: *const T, bitmap: ?*?HBITMAP) callconv(.Inline) HRESULT {
            return @ptrCast(*const IUIImage.VTable, self.vtable).GetBitmap(@ptrCast(*const IUIImage, self), bitmap);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

pub const UI_OWNERSHIP = enum(i32) {
    TRANSFER = 0,
    COPY = 1,
};
pub const UI_OWNERSHIP_TRANSFER = UI_OWNERSHIP.TRANSFER;
pub const UI_OWNERSHIP_COPY = UI_OWNERSHIP.COPY;

// TODO: this type is limited to platform 'windows6.1'
const IID_IUIImageFromBitmap_Value = @import("../zig.zig").Guid.initString("18aba7f3-4c1c-4ba2-bf6c-f5c3326fa816");
pub const IID_IUIImageFromBitmap = &IID_IUIImageFromBitmap_Value;
pub const IUIImageFromBitmap = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        CreateImage: fn(
            self: *const IUIImageFromBitmap,
            bitmap: ?HBITMAP,
            options: UI_OWNERSHIP,
            image: ?*?*IUIImage,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IUIImageFromBitmap_CreateImage(self: *const T, bitmap: ?HBITMAP, options: UI_OWNERSHIP, image: ?*?*IUIImage) callconv(.Inline) HRESULT {
            return @ptrCast(*const IUIImageFromBitmap.VTable, self.vtable).CreateImage(@ptrCast(*const IUIImageFromBitmap, self), bitmap, options, image);
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
const Guid = @import("../zig.zig").Guid;
const HBITMAP = @import("../graphics/gdi.zig").HBITMAP;
const HINSTANCE = @import("../foundation.zig").HINSTANCE;
const HRESULT = @import("../foundation.zig").HRESULT;
const HWND = @import("../foundation.zig").HWND;
const IStream = @import("../system/com.zig").IStream;
const IUnknown = @import("../system/com.zig").IUnknown;
const PROPERTYKEY = @import("../ui/shell/properties_system.zig").PROPERTYKEY;
const PROPVARIANT = @import("../system/com/structured_storage.zig").PROPVARIANT;
const PWSTR = @import("../foundation.zig").PWSTR;

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
