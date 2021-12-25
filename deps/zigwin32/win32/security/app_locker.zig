//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (30)
//--------------------------------------------------------------------------------
pub const SAFER_SCOPEID_MACHINE = @as(u32, 1);
pub const SAFER_SCOPEID_USER = @as(u32, 2);
pub const SAFER_LEVELID_FULLYTRUSTED = @as(u32, 262144);
pub const SAFER_LEVELID_NORMALUSER = @as(u32, 131072);
pub const SAFER_LEVELID_CONSTRAINED = @as(u32, 65536);
pub const SAFER_LEVELID_UNTRUSTED = @as(u32, 4096);
pub const SAFER_LEVELID_DISALLOWED = @as(u32, 0);
pub const SAFER_LEVEL_OPEN = @as(u32, 1);
pub const SAFER_MAX_FRIENDLYNAME_SIZE = @as(u32, 256);
pub const SAFER_MAX_DESCRIPTION_SIZE = @as(u32, 256);
pub const SAFER_MAX_HASH_SIZE = @as(u32, 64);
pub const SAFER_CRITERIA_IMAGEPATH = @as(u32, 1);
pub const SAFER_CRITERIA_NOSIGNEDHASH = @as(u32, 2);
pub const SAFER_CRITERIA_IMAGEHASH = @as(u32, 4);
pub const SAFER_CRITERIA_AUTHENTICODE = @as(u32, 8);
pub const SAFER_CRITERIA_URLZONE = @as(u32, 16);
pub const SAFER_CRITERIA_APPX_PACKAGE = @as(u32, 32);
pub const SAFER_CRITERIA_IMAGEPATH_NT = @as(u32, 4096);
pub const SAFER_POLICY_JOBID_MASK = @as(u32, 4278190080);
pub const SAFER_POLICY_JOBID_CONSTRAINED = @as(u32, 67108864);
pub const SAFER_POLICY_JOBID_UNTRUSTED = @as(u32, 50331648);
pub const SAFER_POLICY_ONLY_EXES = @as(u32, 65536);
pub const SAFER_POLICY_SANDBOX_INERT = @as(u32, 131072);
pub const SAFER_POLICY_HASH_DUPLICATE = @as(u32, 262144);
pub const SAFER_POLICY_ONLY_AUDIT = @as(u32, 4096);
pub const SAFER_POLICY_BLOCK_CLIENT_UI = @as(u32, 8192);
pub const SAFER_POLICY_UIFLAGS_MASK = @as(u32, 255);
pub const SAFER_POLICY_UIFLAGS_INFORMATION_PROMPT = @as(u32, 1);
pub const SAFER_POLICY_UIFLAGS_OPTION_PROMPT = @as(u32, 2);
pub const SAFER_POLICY_UIFLAGS_HIDDEN = @as(u32, 4);

//--------------------------------------------------------------------------------
// Section: Types (11)
//--------------------------------------------------------------------------------
pub const SAFER_COMPUTE_TOKEN_FROM_LEVEL_FLAGS = enum(u32) {
    NULL_IF_EQUAL = 1,
    COMPARE_ONLY = 2,
    MAKE_INERT = 4,
    WANT_FLAGS = 8,
    _,
    pub fn initFlags(o: struct {
        NULL_IF_EQUAL: u1 = 0,
        COMPARE_ONLY: u1 = 0,
        MAKE_INERT: u1 = 0,
        WANT_FLAGS: u1 = 0,
    }) SAFER_COMPUTE_TOKEN_FROM_LEVEL_FLAGS {
        return @intToEnum(SAFER_COMPUTE_TOKEN_FROM_LEVEL_FLAGS,
              (if (o.NULL_IF_EQUAL == 1) @enumToInt(SAFER_COMPUTE_TOKEN_FROM_LEVEL_FLAGS.NULL_IF_EQUAL) else 0)
            | (if (o.COMPARE_ONLY == 1) @enumToInt(SAFER_COMPUTE_TOKEN_FROM_LEVEL_FLAGS.COMPARE_ONLY) else 0)
            | (if (o.MAKE_INERT == 1) @enumToInt(SAFER_COMPUTE_TOKEN_FROM_LEVEL_FLAGS.MAKE_INERT) else 0)
            | (if (o.WANT_FLAGS == 1) @enumToInt(SAFER_COMPUTE_TOKEN_FROM_LEVEL_FLAGS.WANT_FLAGS) else 0)
        );
    }
};
pub const SAFER_TOKEN_NULL_IF_EQUAL = SAFER_COMPUTE_TOKEN_FROM_LEVEL_FLAGS.NULL_IF_EQUAL;
pub const SAFER_TOKEN_COMPARE_ONLY = SAFER_COMPUTE_TOKEN_FROM_LEVEL_FLAGS.COMPARE_ONLY;
pub const SAFER_TOKEN_MAKE_INERT = SAFER_COMPUTE_TOKEN_FROM_LEVEL_FLAGS.MAKE_INERT;
pub const SAFER_TOKEN_WANT_FLAGS = SAFER_COMPUTE_TOKEN_FROM_LEVEL_FLAGS.WANT_FLAGS;

pub const SAFER_CODE_PROPERTIES_V1 = extern struct {
    cbSize: u32,
    dwCheckFlags: u32,
    ImagePath: ?[*:0]const u16,
    hImageFileHandle: ?HANDLE,
    UrlZoneId: u32,
    ImageHash: [64]u8,
    dwImageHashSize: u32,
    ImageSize: LARGE_INTEGER,
    HashAlgorithm: u32,
    pByteBlock: ?*u8,
    hWndParent: ?HWND,
    dwWVTUIChoice: u32,
};

pub const SAFER_CODE_PROPERTIES_V2 = extern struct {
    cbSize: u32,
    dwCheckFlags: u32,
    ImagePath: ?[*:0]const u16,
    hImageFileHandle: ?HANDLE,
    UrlZoneId: u32,
    ImageHash: [64]u8,
    dwImageHashSize: u32,
    ImageSize: LARGE_INTEGER,
    HashAlgorithm: u32,
    pByteBlock: ?*u8,
    hWndParent: ?HWND,
    dwWVTUIChoice: u32,
    PackageMoniker: ?[*:0]const u16,
    PackagePublisher: ?[*:0]const u16,
    PackageName: ?[*:0]const u16,
    PackageVersion: u64,
    PackageIsFramework: BOOL,
};

pub const SAFER_POLICY_INFO_CLASS = enum(i32) {
    LevelList = 1,
    EnableTransparentEnforcement = 2,
    DefaultLevel = 3,
    EvaluateUserScope = 4,
    ScopeFlags = 5,
    DefaultLevelFlags = 6,
    AuthenticodeEnabled = 7,
};
pub const SaferPolicyLevelList = SAFER_POLICY_INFO_CLASS.LevelList;
pub const SaferPolicyEnableTransparentEnforcement = SAFER_POLICY_INFO_CLASS.EnableTransparentEnforcement;
pub const SaferPolicyDefaultLevel = SAFER_POLICY_INFO_CLASS.DefaultLevel;
pub const SaferPolicyEvaluateUserScope = SAFER_POLICY_INFO_CLASS.EvaluateUserScope;
pub const SaferPolicyScopeFlags = SAFER_POLICY_INFO_CLASS.ScopeFlags;
pub const SaferPolicyDefaultLevelFlags = SAFER_POLICY_INFO_CLASS.DefaultLevelFlags;
pub const SaferPolicyAuthenticodeEnabled = SAFER_POLICY_INFO_CLASS.AuthenticodeEnabled;

pub const SAFER_OBJECT_INFO_CLASS = enum(i32) {
    LevelId = 1,
    ScopeId = 2,
    FriendlyName = 3,
    Description = 4,
    Builtin = 5,
    Disallowed = 6,
    DisableMaxPrivilege = 7,
    InvertDeletedPrivileges = 8,
    DeletedPrivileges = 9,
    DefaultOwner = 10,
    SidsToDisable = 11,
    RestrictedSidsInverted = 12,
    RestrictedSidsAdded = 13,
    AllIdentificationGuids = 14,
    SingleIdentification = 15,
    ExtendedError = 16,
};
pub const SaferObjectLevelId = SAFER_OBJECT_INFO_CLASS.LevelId;
pub const SaferObjectScopeId = SAFER_OBJECT_INFO_CLASS.ScopeId;
pub const SaferObjectFriendlyName = SAFER_OBJECT_INFO_CLASS.FriendlyName;
pub const SaferObjectDescription = SAFER_OBJECT_INFO_CLASS.Description;
pub const SaferObjectBuiltin = SAFER_OBJECT_INFO_CLASS.Builtin;
pub const SaferObjectDisallowed = SAFER_OBJECT_INFO_CLASS.Disallowed;
pub const SaferObjectDisableMaxPrivilege = SAFER_OBJECT_INFO_CLASS.DisableMaxPrivilege;
pub const SaferObjectInvertDeletedPrivileges = SAFER_OBJECT_INFO_CLASS.InvertDeletedPrivileges;
pub const SaferObjectDeletedPrivileges = SAFER_OBJECT_INFO_CLASS.DeletedPrivileges;
pub const SaferObjectDefaultOwner = SAFER_OBJECT_INFO_CLASS.DefaultOwner;
pub const SaferObjectSidsToDisable = SAFER_OBJECT_INFO_CLASS.SidsToDisable;
pub const SaferObjectRestrictedSidsInverted = SAFER_OBJECT_INFO_CLASS.RestrictedSidsInverted;
pub const SaferObjectRestrictedSidsAdded = SAFER_OBJECT_INFO_CLASS.RestrictedSidsAdded;
pub const SaferObjectAllIdentificationGuids = SAFER_OBJECT_INFO_CLASS.AllIdentificationGuids;
pub const SaferObjectSingleIdentification = SAFER_OBJECT_INFO_CLASS.SingleIdentification;
pub const SaferObjectExtendedError = SAFER_OBJECT_INFO_CLASS.ExtendedError;

pub const SAFER_IDENTIFICATION_TYPES = enum(i32) {
    Default = 0,
    TypeImageName = 1,
    TypeImageHash = 2,
    TypeUrlZone = 3,
    TypeCertificate = 4,
};
pub const SaferIdentityDefault = SAFER_IDENTIFICATION_TYPES.Default;
pub const SaferIdentityTypeImageName = SAFER_IDENTIFICATION_TYPES.TypeImageName;
pub const SaferIdentityTypeImageHash = SAFER_IDENTIFICATION_TYPES.TypeImageHash;
pub const SaferIdentityTypeUrlZone = SAFER_IDENTIFICATION_TYPES.TypeUrlZone;
pub const SaferIdentityTypeCertificate = SAFER_IDENTIFICATION_TYPES.TypeCertificate;

pub const SAFER_IDENTIFICATION_HEADER = extern struct {
    dwIdentificationType: SAFER_IDENTIFICATION_TYPES,
    cbStructSize: u32,
    IdentificationGuid: Guid,
    lastModified: FILETIME,
};

pub const SAFER_PATHNAME_IDENTIFICATION = extern struct {
    header: SAFER_IDENTIFICATION_HEADER,
    Description: [256]u16,
    ImageName: ?[*]u16,
    dwSaferFlags: u32,
};

pub const SAFER_HASH_IDENTIFICATION = extern struct {
    header: SAFER_IDENTIFICATION_HEADER,
    Description: [256]u16,
    FriendlyName: [256]u16,
    HashSize: u32,
    ImageHash: [64]u8,
    HashAlgorithm: u32,
    ImageSize: LARGE_INTEGER,
    dwSaferFlags: u32,
};

pub const SAFER_HASH_IDENTIFICATION2 = extern struct {
    hashIdentification: SAFER_HASH_IDENTIFICATION,
    HashSize: u32,
    ImageHash: [64]u8,
    HashAlgorithm: u32,
};

pub const SAFER_URLZONE_IDENTIFICATION = extern struct {
    header: SAFER_IDENTIFICATION_HEADER,
    UrlZoneId: u32,
    dwSaferFlags: u32,
};


//--------------------------------------------------------------------------------
// Section: Functions (10)
//--------------------------------------------------------------------------------
// TODO: this type is limited to platform 'windows5.1.2600'
pub extern "ADVAPI32" fn SaferGetPolicyInformation(
    dwScopeId: u32,
    SaferPolicyInfoClass: SAFER_POLICY_INFO_CLASS,
    InfoBufferSize: u32,
    // TODO: what to do with BytesParamIndex 2?
    InfoBuffer: ?*anyopaque,
    InfoBufferRetSize: ?*u32,
    lpReserved: ?*anyopaque,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.1.2600'
pub extern "ADVAPI32" fn SaferSetPolicyInformation(
    dwScopeId: u32,
    SaferPolicyInfoClass: SAFER_POLICY_INFO_CLASS,
    InfoBufferSize: u32,
    // TODO: what to do with BytesParamIndex 2?
    InfoBuffer: ?*anyopaque,
    lpReserved: ?*anyopaque,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.1.2600'
pub extern "ADVAPI32" fn SaferCreateLevel(
    dwScopeId: u32,
    dwLevelId: u32,
    OpenFlags: u32,
    pLevelHandle: ?*SAFER_LEVEL_HANDLE,
    lpReserved: ?*anyopaque,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.1.2600'
pub extern "ADVAPI32" fn SaferCloseLevel(
    hLevelHandle: SAFER_LEVEL_HANDLE,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.1.2600'
pub extern "ADVAPI32" fn SaferIdentifyLevel(
    dwNumProperties: u32,
    pCodeProperties: ?[*]SAFER_CODE_PROPERTIES_V2,
    pLevelHandle: ?*SAFER_LEVEL_HANDLE,
    lpReserved: ?*anyopaque,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.1.2600'
pub extern "ADVAPI32" fn SaferComputeTokenFromLevel(
    LevelHandle: SAFER_LEVEL_HANDLE,
    InAccessToken: ?HANDLE,
    OutAccessToken: ?*?HANDLE,
    dwFlags: SAFER_COMPUTE_TOKEN_FROM_LEVEL_FLAGS,
    lpReserved: ?*anyopaque,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.1.2600'
pub extern "ADVAPI32" fn SaferGetLevelInformation(
    LevelHandle: SAFER_LEVEL_HANDLE,
    dwInfoType: SAFER_OBJECT_INFO_CLASS,
    // TODO: what to do with BytesParamIndex 3?
    lpQueryBuffer: ?*anyopaque,
    dwInBufferSize: u32,
    lpdwOutBufferSize: ?*u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.1.2600'
pub extern "ADVAPI32" fn SaferSetLevelInformation(
    LevelHandle: SAFER_LEVEL_HANDLE,
    dwInfoType: SAFER_OBJECT_INFO_CLASS,
    // TODO: what to do with BytesParamIndex 3?
    lpQueryBuffer: ?*anyopaque,
    dwInBufferSize: u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.1.2600'
pub extern "ADVAPI32" fn SaferRecordEventLogEntry(
    hLevel: SAFER_LEVEL_HANDLE,
    szTargetPath: ?[*:0]const u16,
    lpReserved: ?*anyopaque,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.1.2600'
pub extern "ADVAPI32" fn SaferiIsExecutableFileType(
    szFullPathname: ?[*:0]const u16,
    bFromShellExecute: BOOLEAN,
) callconv(@import("std").os.windows.WINAPI) BOOL;


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
// Section: Imports (9)
//--------------------------------------------------------------------------------
const Guid = @import("../zig.zig").Guid;
const BOOL = @import("../foundation.zig").BOOL;
const BOOLEAN = @import("../foundation.zig").BOOLEAN;
const FILETIME = @import("../foundation.zig").FILETIME;
const HANDLE = @import("../foundation.zig").HANDLE;
const HWND = @import("../foundation.zig").HWND;
const LARGE_INTEGER = @import("../foundation.zig").LARGE_INTEGER;
const PWSTR = @import("../foundation.zig").PWSTR;
const SAFER_LEVEL_HANDLE = @import("../security.zig").SAFER_LEVEL_HANDLE;

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
