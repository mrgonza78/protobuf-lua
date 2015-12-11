
local string = string
local struct = {}

-- todo: rewrite inner lib to use lua-appropriate formats
local format_map = {Q = 'L', q = 'l'}

function struct.pack(write, fmt, value)
  fmt = string.char(fmt)
  fmt = format_map[fmt] or fmt
  write(string.pack(fmt, value))
end

function struct.unpack(fmt, buffer, pos)
  fmt = string.char(fmt)
  fmt = format_map[fmt] or fmt
  return string.unpack(fmt, buffer, pos+1)
end

return struct

