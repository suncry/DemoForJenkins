// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: commands/friend_operation.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct Protocol_Message_Commands_FriendOperation: SwiftProtobuf.Message {
  static let protoMessageName: String = _protobuf_package + ".FriendOperation"

  /// 操作类型 0-添加 1-同意 2-拒绝 3-拉黑 9=忽略
  var operation: Int32 = 0

  /// 对方id(仅支持医生/机构，所以无需type)
  var opposite: Int64 = 0

  /// 请求附属消息
  var content: String = String()

  /// 来源 0=通讯录 1=通过手机号搜索 2=通过群 3=通过二维码 4=通过名片 5=通过主页
  var reference: Int32 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt32Field(value: &self.operation)
      case 2: try decoder.decodeSingularInt64Field(value: &self.opposite)
      case 3: try decoder.decodeSingularStringField(value: &self.content)
      case 4: try decoder.decodeSingularInt32Field(value: &self.reference)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.operation != 0 {
      try visitor.visitSingularInt32Field(value: self.operation, fieldNumber: 1)
    }
    if self.opposite != 0 {
      try visitor.visitSingularInt64Field(value: self.opposite, fieldNumber: 2)
    }
    if !self.content.isEmpty {
      try visitor.visitSingularStringField(value: self.content, fieldNumber: 3)
    }
    if self.reference != 0 {
      try visitor.visitSingularInt32Field(value: self.reference, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "protocol.message.commands"

extension Protocol_Message_Commands_FriendOperation: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "operation"),
    2: .same(proto: "opposite"),
    3: .same(proto: "content"),
    4: .same(proto: "reference"),
  ]

  func _protobuf_generated_isEqualTo(other: Protocol_Message_Commands_FriendOperation) -> Bool {
    if self.operation != other.operation {return false}
    if self.opposite != other.opposite {return false}
    if self.content != other.content {return false}
    if self.reference != other.reference {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
