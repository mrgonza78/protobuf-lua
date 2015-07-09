.PHONY: all rockspec build clean

VERSION=1.0.0
BUILDDIR = build
NAME = protobuf-$(VERSION)-0

all: build

rockspec:
	mkdir -p $(BUILDDIR)
	sed "s/%VERSION%/$(VERSION)/g" protobuf.rockspec > $(BUILDDIR)/protobuf-$(VERSION)-0.rockspec

build: rockspec
	mkdir -p $(BUILDDIR)/$(NAME)
	mkdir -p $(BUILDDIR)/$(NAME)/lua/protobuf
	mkdir -p $(BUILDDIR)/$(NAME)/src
	cp README.md LICENSE $(BUILDDIR)/$(NAME)/
	cp -R protobuf/*.lua $(BUILDDIR)/$(NAME)/lua/protobuf/
	cp -R protobuf/*.c $(BUILDDIR)/$(NAME)/src/
	cp -R protoc-plugin $(BUILDDIR)/$(NAME)/
	(cd $(BUILDDIR); tar czvpf $(NAME).tar.gz $(NAME)/)

clean:
	rm -rf $(BUILDDIR)
	find . -name "*.pyc" -exec rm -rf {} \;
