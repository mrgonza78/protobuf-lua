.PHONY: all rockspec build clean

VERSION = 1.1.1
NAME = protobuf-$(VERSION)-0

all: build

rockspec:
	sed "s/%VERSION%/$(VERSION)/g" protobuf.rockspec.tmpl > protobuf-$(VERSION)-0.rockspec

build: rockspec
	luarocks pack protobuf-$(VERSION)-0.rockspec

clean:
	rm -f *.rockspec *.rock src/pb.o src/pb.so
	find . -name "*.pyc" -exec rm -rf {} \;
