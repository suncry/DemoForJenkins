// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: types/text.proto
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

/// 文本消息
struct Protocol_Message_Types_Text: SwiftProtobuf.Message {
  static let protoMessageName: String = _protobuf_package + ".Text"

  /// 文本内容
  var content: String = String()

  /// 5.1新增需求，文本中特么要夹带链接
  var anchors: [Protocol_Message_Types_Anchor] = []

  /// 5.2圈某人
  var atUsers: [Protocol_Message_Misc_User] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.content)
      case 2: try decoder.decodeRepeatedMessageField(value: &self.anchors)
      case 3: try decoder.decodeRepeatedMessageField(value: &self.atUsers)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.content.isEmpty {
      try visitor.visitSingularStringField(value: self.content, fieldNumber: 1)
    }
    if !self.anchors.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.anchors, fieldNumber: 2)
    }
    if !self.atUsers.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.atUsers, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "protocol.message.types"

extension Protocol_Message_Types_Text: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "content"),
    2: .same(proto: "anchors"),
    3: .same(proto: "atUsers"),
  ]

  func _protobuf_generated_isEqualTo(other: Protocol_Message_Types_Text) -> Bool {
    if self.content != other.content {return false}
    if self.anchors != other.anchors {return false}
    if self.atUsers != other.atUsers {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
