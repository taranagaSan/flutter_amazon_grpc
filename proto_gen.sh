#!/bin/bash

protoc -I /Users/alekparkhomenko/home_projects/ts-node-grpc/proto /Users/alekparkhomenko/home_projects/ts-node-grpc/proto/shop.proto --plugin=protoc-gen-dart=$HOME/.pub-cache/bin/protoc-gen-dart --dart_out=grpc:lib/src/common/data/generated
