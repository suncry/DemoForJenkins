// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: misc/group.proto
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

struct Protocol_Message_Misc_Group: SwiftProtobuf.Message {
  static let protoMessageName: String = _protobuf_package + ".Group"

  var id: Int64 = 0

  var name: String = String()

  /// 很多个用户的头像
  var avatar: [String] = []

  /// 群人数
  var amount: Int32 = 0

  /// 群主，只能为医联主库用户
  var owner: Int64 = 0

  ///  群业务类型  0：普通群 1：问诊
  var businessType: Int32 = 0

  ///  群业务id   如businessType！=0.则businessId 为具体业务业务id
  var businessID: Int64 = 0

  ///用户设置的头像
  var avatarURL: String = String()

  /// 是否公开群
  var isPublic: Int32 = 0

  /// 是否被屏蔽
  var isForbidden: Int32 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt64Field(value: &self.id)
      case 3: try decoder.decodeSingularStringField(value: &self.name)
      case 4: try decoder.decodeRepeatedStringField(value: &self.avatar)
      case 5: try decoder.decodeSingularInt32Field(value: &self.amount)
      case 6: try decoder.decodeSingularInt64Field(value: &self.owner)
      case 7: try decoder.decodeSingularInt32Field(value: &self.businessType)
      case 8: try decoder.decodeSingularInt64Field(value: &self.businessID)
      case 9: try decoder.decodeSingularStringField(value: &self.avatarURL)
      case 10: try decoder.decodeSingularInt32Field(value: &self.isPublic)
      case 11: try decoder.decodeSingularInt32Field(value: &self.isForbidden)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.id != 0 {
      try visitor.visitSingularInt64Field(value: self.id, fieldNumber: 1)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 3)
    }
    if !self.avatar.isEmpty {
      try visitor.visitRepeatedStringField(value: self.avatar, fieldNumber: 4)
    }
    if self.amount != 0 {
      try visitor.visitSingularInt32Field(value: self.amount, fieldNumber: 5)
    }
    if self.owner != 0 {
      try visitor.visitSingularInt64Field(value: self.owner, fieldNumber: 6)
    }
    if self.businessType != 0 {
      try visitor.visitSingularInt32Field(value: self.businessType, fieldNumber: 7)
    }
    if self.businessID != 0 {
      try visitor.visitSingularInt64Field(value: self.businessID, fieldNumber: 8)
    }
    if !self.avatarURL.isEmpty {
      try visitor.visitSingularStringField(value: self.avatarURL, fieldNumber: 9)
    }
    if self.isPublic != 0 {
      try visitor.visitSingularInt32Field(value: self.isPublic, fieldNumber: 10)
    }
    if self.isForbidden != 0 {
      try visitor.visitSingularInt32Field(value: self.isForbidden, fieldNumber: 11)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "protocol.message.misc"

extension Protocol_Message_Misc_Group: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    3: .same(proto: "name"),
    4: .same(proto: "avatar"),
    5: .same(proto: "amount"),
    6: .same(proto: "owner"),
    7: .same(proto: "businessType"),
    8: .same(proto: "businessId"),
    9: .same(proto: "avatarUrl"),
    10: .same(proto: "isPublic"),
    11: .same(proto: "isForbidden"),
  ]

  func _protobuf_generated_isEqualTo(other: Protocol_Message_Misc_Group) -> Bool {
    if self.id != other.id {return false}
    if self.name != other.name {return false}
    if self.avatar != other.avatar {return false}
    if self.amount != other.amount {return false}
    if self.owner != other.owner {return false}
    if self.businessType != other.businessType {return false}
    if self.businessID != other.businessID {return false}
    if self.avatarURL != other.avatarURL {return false}
    if self.isPublic != other.isPublic {return false}
    if self.isForbidden != other.isForbidden {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
