local ffi = require("ffi")

local LLPI = {}

function LLPI.init()
    ffi.cdef [[typedef struct {
    const char *filename;
    const long line;
    const int column;
} LLPI_Location;

typedef struct {
    const short signature;
    const char *identifier;

    LLPI_Location location;
} LLPI_Token;

typedef enum {
    // 5.x
    LUA5_0,
    LUA5_1,
    LUA5_2,
    LUA5_3,
    LUA5_4,
    LUA5_5,

    // custom

    LUAJIT,
    LUAU,
    MOONSCRIPT,
    TEAL,
} LLPI_MetadataLuaVersion;]]
end

return LLPI
