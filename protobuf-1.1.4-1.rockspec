package = "protobuf"
version = "1.1.4-1"
source = {
  url = "git://github.com/mrgonza78/protobuf-lua.git",
  tag = "1.1.4",
}
description = {
  summary = "Protobuf library and compiler plugin",
  homepage = "https://github.com/mrgonza78/protobuf-lua",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1, < 5.3"
}
build = {
  type = "builtin",
  modules = {
    protobuf = "protobuf/init.lua",
    ["protobuf.containers"] = "protobuf/containers.lua",
    ["protobuf.encoder"] = "protobuf/encoder.lua",
    ["protobuf.decoder"] = "protobuf/decoder.lua",
    ["protobuf.descriptor"] = "protobuf/descriptor.lua",
    ["protobuf.text_format"] = "protobuf/text_format.lua",
    ["protobuf.wire_format"] = "protobuf/wire_format.lua",
    ["protobuf.listener"] = "protobuf/listener.lua",
    ["protobuf.type_checkers"] = "protobuf/type_checkers.lua",
    ["protobuf.helper"] = "protobuf/helper.lua",
    ["protobuf.pb"] = { sources = { "protobuf/pb.c" } }
  },
  copy_directories = {"protoc-plugin"}
}
