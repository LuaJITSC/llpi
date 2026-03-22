local ffi = require("ffi")
local C = ffi.C

local Metadata = {}

---@type fun(): LLPI.Metadata
function Metadata.createMetadata()
    ---@class LLPI.Metadata
    local metadata = {}

    ---@type integer
    metadata.version = C.LUA5_1 --[[@as integer]]

    ---@type string
    metadata.filename = nil

    return metadata
end

return Metadata