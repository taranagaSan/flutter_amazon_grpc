#!/bin/bash

protoc -I C:/sasha/home_projects/ts-node-grpc/proto/ C:/sasha/home_projects/ts-node-grpc/proto/random.proto --dart_out=grpc:lib/src/common/data/generated
