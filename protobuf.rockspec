package = "protobuf"
version = "%VERSION%-0"
source = {
  url = "https://github.com/djungelorm/protobuf-lua/releases/download/v%VERSION%/protobuf-%VERSION%-0.tar.gz"
}
description = {
  summary = "protobuf library and compiler plugin",
  homepage = "https://github.com/djungelorm/protobuf-lua",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1, <= 5.3"
}
build = {
  type = "builtin",
  modules = {
    ["protobuf.pb"] = {
      sources = {"src/pb.c"}
    }
  },
  copy_directories = {"protoc-plugin"}
}
