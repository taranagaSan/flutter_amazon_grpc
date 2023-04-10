///
//  Generated code. Do not modify.
//  source: random.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use pingRequestDescriptor instead')
const PingRequest$json = const {
  '1': 'PingRequest',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `PingRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pingRequestDescriptor = $convert.base64Decode('CgtQaW5nUmVxdWVzdBIYCgdtZXNzYWdlGAEgASgJUgdtZXNzYWdl');
@$core.Deprecated('Use pongResponseDescriptor instead')
const PongResponse$json = const {
  '1': 'PongResponse',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `PongResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pongResponseDescriptor = $convert.base64Decode('CgxQb25nUmVzcG9uc2USGAoHbWVzc2FnZRgBIAEoCVIHbWVzc2FnZQ==');
@$core.Deprecated('Use numberRequestDescriptor instead')
const NumberRequest$json = const {
  '1': 'NumberRequest',
  '2': const [
    const {'1': 'maxVal', '3': 1, '4': 1, '5': 5, '10': 'maxVal'},
  ],
};

/// Descriptor for `NumberRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List numberRequestDescriptor = $convert.base64Decode('Cg1OdW1iZXJSZXF1ZXN0EhYKBm1heFZhbBgBIAEoBVIGbWF4VmFs');
@$core.Deprecated('Use numberResponseDescriptor instead')
const NumberResponse$json = const {
  '1': 'NumberResponse',
  '2': const [
    const {'1': 'num', '3': 1, '4': 1, '5': 5, '10': 'num'},
  ],
};

/// Descriptor for `NumberResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List numberResponseDescriptor = $convert.base64Decode('Cg5OdW1iZXJSZXNwb25zZRIQCgNudW0YASABKAVSA251bQ==');
@$core.Deprecated('Use todoRequestDescriptor instead')
const TodoRequest$json = const {
  '1': 'TodoRequest',
  '2': const [
    const {'1': 'todo', '3': 1, '4': 1, '5': 9, '10': 'todo'},
    const {'1': 'status', '3': 2, '4': 1, '5': 9, '10': 'status'},
  ],
};

/// Descriptor for `TodoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List todoRequestDescriptor = $convert.base64Decode('CgtUb2RvUmVxdWVzdBISCgR0b2RvGAEgASgJUgR0b2RvEhYKBnN0YXR1cxgCIAEoCVIGc3RhdHVz');
@$core.Deprecated('Use todoResponseDescriptor instead')
const TodoResponse$json = const {
  '1': 'TodoResponse',
  '2': const [
    const {'1': 'todos', '3': 1, '4': 3, '5': 11, '6': '.randomPackage.TodoRequest', '10': 'todos'},
  ],
};

/// Descriptor for `TodoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List todoResponseDescriptor = $convert.base64Decode('CgxUb2RvUmVzcG9uc2USMAoFdG9kb3MYASADKAsyGi5yYW5kb21QYWNrYWdlLlRvZG9SZXF1ZXN0UgV0b2Rvcw==');
@$core.Deprecated('Use chatRequestDescriptor instead')
const ChatRequest$json = const {
  '1': 'ChatRequest',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `ChatRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatRequestDescriptor = $convert.base64Decode('CgtDaGF0UmVxdWVzdBIYCgdtZXNzYWdlGAEgASgJUgdtZXNzYWdl');
@$core.Deprecated('Use chatResponseDescriptor instead')
const ChatResponse$json = const {
  '1': 'ChatResponse',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `ChatResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatResponseDescriptor = $convert.base64Decode('CgxDaGF0UmVzcG9uc2USGgoIdXNlcm5hbWUYASABKAlSCHVzZXJuYW1lEhgKB21lc3NhZ2UYAiABKAlSB21lc3NhZ2U=');
