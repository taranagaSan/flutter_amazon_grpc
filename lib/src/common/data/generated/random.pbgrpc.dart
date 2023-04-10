///
//  Generated code. Do not modify.
//  source: random.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'random.pb.dart' as $0;
export 'random.pb.dart';

class RandomClient extends $grpc.Client {
  static final _$pingPong = $grpc.ClientMethod<$0.PingRequest, $0.PongResponse>(
      '/randomPackage.Random/PingPong',
      ($0.PingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.PongResponse.fromBuffer(value));
  static final _$randomNumbers =
      $grpc.ClientMethod<$0.NumberRequest, $0.NumberResponse>(
          '/randomPackage.Random/RandomNumbers',
          ($0.NumberRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.NumberResponse.fromBuffer(value));
  static final _$todoList = $grpc.ClientMethod<$0.TodoRequest, $0.TodoResponse>(
      '/randomPackage.Random/TodoList',
      ($0.TodoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.TodoResponse.fromBuffer(value));
  static final _$chat = $grpc.ClientMethod<$0.ChatRequest, $0.ChatResponse>(
      '/randomPackage.Random/Chat',
      ($0.ChatRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ChatResponse.fromBuffer(value));

  RandomClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.PongResponse> pingPong($0.PingRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$pingPong, request, options: options);
  }

  $grpc.ResponseStream<$0.NumberResponse> randomNumbers(
      $0.NumberRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$randomNumbers, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.TodoResponse> todoList(
      $async.Stream<$0.TodoRequest> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$todoList, request, options: options).single;
  }

  $grpc.ResponseStream<$0.ChatResponse> chat(
      $async.Stream<$0.ChatRequest> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$chat, request, options: options);
  }
}

abstract class RandomServiceBase extends $grpc.Service {
  $core.String get $name => 'randomPackage.Random';

  RandomServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.PingRequest, $0.PongResponse>(
        'PingPong',
        pingPong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.PingRequest.fromBuffer(value),
        ($0.PongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.NumberRequest, $0.NumberResponse>(
        'RandomNumbers',
        randomNumbers_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.NumberRequest.fromBuffer(value),
        ($0.NumberResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.TodoRequest, $0.TodoResponse>(
        'TodoList',
        todoList,
        true,
        false,
        ($core.List<$core.int> value) => $0.TodoRequest.fromBuffer(value),
        ($0.TodoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ChatRequest, $0.ChatResponse>(
        'Chat',
        chat,
        true,
        true,
        ($core.List<$core.int> value) => $0.ChatRequest.fromBuffer(value),
        ($0.ChatResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.PongResponse> pingPong_Pre(
      $grpc.ServiceCall call, $async.Future<$0.PingRequest> request) async {
    return pingPong(call, await request);
  }

  $async.Stream<$0.NumberResponse> randomNumbers_Pre(
      $grpc.ServiceCall call, $async.Future<$0.NumberRequest> request) async* {
    yield* randomNumbers(call, await request);
  }

  $async.Future<$0.PongResponse> pingPong(
      $grpc.ServiceCall call, $0.PingRequest request);
  $async.Stream<$0.NumberResponse> randomNumbers(
      $grpc.ServiceCall call, $0.NumberRequest request);
  $async.Future<$0.TodoResponse> todoList(
      $grpc.ServiceCall call, $async.Stream<$0.TodoRequest> request);
  $async.Stream<$0.ChatResponse> chat(
      $grpc.ServiceCall call, $async.Stream<$0.ChatRequest> request);
}
