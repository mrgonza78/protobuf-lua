#!/bin/bash

DIR=`dirname $0`
protoc --lua_out=${DIR} ${DIR}/*.proto &&
busted test.lua
