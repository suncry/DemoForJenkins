// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: message.proto
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

struct Protocol_Message_Message: SwiftProtobuf.Message {
  static let protoMessageName: String = _protobuf_package + ".Message"

  /// id 可以经过算法得到毫秒级时间戳: (id >> 22) + 1288834974657
  var id: UInt64 {
    get {return _storage._id}
    set {_uniqueStorage()._id = newValue}
  }

  /// 消息发送者
  var from: Protocol_Message_Misc_User {
    get {return _storage._from ?? Protocol_Message_Misc_User()}
    set {_uniqueStorage()._from = newValue}
  }
  /// Returns true if `from` has been explicitly set.
  var hasFrom: Bool {return _storage._from != nil}
  /// Clears the value of `from`. Subsequent reads from it will return its default value.
  mutating func clearFrom() {_storage._from = nil}

  var to: OneOf_To? {
    get {return _storage._to}
    set {_uniqueStorage()._to = newValue}
  }

  /// 接收者
  var user: Protocol_Message_Misc_User {
    get {
      if case .user(let v)? = _storage._to {return v}
      return Protocol_Message_Misc_User()
    }
    set {_uniqueStorage()._to = .user(newValue)}
  }

  /// 接收群
  var group: Protocol_Message_Misc_Group {
    get {
      if case .group(let v)? = _storage._to {return v}
      return Protocol_Message_Misc_Group()
    }
    set {_uniqueStorage()._to = .group(newValue)}
  }

  var data: OneOf_Data? {
    get {return _storage._data}
    set {_uniqueStorage()._data = newValue}
  }

  var text: Protocol_Message_Types_Text {
    get {
      if case .text(let v)? = _storage._data {return v}
      return Protocol_Message_Types_Text()
    }
    set {_uniqueStorage()._data = .text(newValue)}
  }

  var voice: Protocol_Message_Types_Voice {
    get {
      if case .voice(let v)? = _storage._data {return v}
      return Protocol_Message_Types_Voice()
    }
    set {_uniqueStorage()._data = .voice(newValue)}
  }

  var card: Protocol_Message_Types_Card {
    get {
      if case .card(let v)? = _storage._data {return v}
      return Protocol_Message_Types_Card()
    }
    set {_uniqueStorage()._data = .card(newValue)}
  }

  var image: Protocol_Message_Types_Image {
    get {
      if case .image(let v)? = _storage._data {return v}
      return Protocol_Message_Types_Image()
    }
    set {_uniqueStorage()._data = .image(newValue)}
  }

  var location: Protocol_Message_Types_Location {
    get {
      if case .location(let v)? = _storage._data {return v}
      return Protocol_Message_Types_Location()
    }
    set {_uniqueStorage()._data = .location(newValue)}
  }

  var notice: Protocol_Message_Types_Notice {
    get {
      if case .notice(let v)? = _storage._data {return v}
      return Protocol_Message_Types_Notice()
    }
    set {_uniqueStorage()._data = .notice(newValue)}
  }

  var businessCard: Protocol_Message_Types_BusinessCard {
    get {
      if case .businessCard(let v)? = _storage._data {return v}
      return Protocol_Message_Types_BusinessCard()
    }
    set {_uniqueStorage()._data = .businessCard(newValue)}
  }

  var json: Protocol_Message_Types_Json {
    get {
      if case .json(let v)? = _storage._data {return v}
      return Protocol_Message_Types_Json()
    }
    set {_uniqueStorage()._data = .json(newValue)}
  }

  var notify: Protocol_Message_Types_BusinessNotify {
    get {
      if case .notify(let v)? = _storage._data {return v}
      return Protocol_Message_Types_BusinessNotify()
    }
    set {_uniqueStorage()._data = .notify(newValue)}
  }

  var login: Protocol_Message_Commands_Login {
    get {
      if case .login(let v)? = _storage._data {return v}
      return Protocol_Message_Commands_Login()
    }
    set {_uniqueStorage()._data = .login(newValue)}
  }

  var withdraw: Protocol_Message_Commands_Withdraw {
    get {
      if case .withdraw(let v)? = _storage._data {return v}
      return Protocol_Message_Commands_Withdraw()
    }
    set {_uniqueStorage()._data = .withdraw(newValue)}
  }

  var groupOperation: Protocol_Message_Commands_GroupOperation {
    get {
      if case .groupOperation(let v)? = _storage._data {return v}
      return Protocol_Message_Commands_GroupOperation()
    }
    set {_uniqueStorage()._data = .groupOperation(newValue)}
  }

  var friendOperation: Protocol_Message_Commands_FriendOperation {
    get {
      if case .friendOperation(let v)? = _storage._data {return v}
      return Protocol_Message_Commands_FriendOperation()
    }
    set {_uniqueStorage()._data = .friendOperation(newValue)}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum OneOf_To: Equatable {
    /// 接收者
    case user(Protocol_Message_Misc_User)
    /// 接收群
    case group(Protocol_Message_Misc_Group)

    static func ==(lhs: Protocol_Message_Message.OneOf_To, rhs: Protocol_Message_Message.OneOf_To) -> Bool {
      switch (lhs, rhs) {
      case (.user(let l), .user(let r)): return l == r
      case (.group(let l), .group(let r)): return l == r
      default: return false
      }
    }
  }

  enum OneOf_Data: Equatable {
    case text(Protocol_Message_Types_Text)
    case voice(Protocol_Message_Types_Voice)
    case card(Protocol_Message_Types_Card)
    case image(Protocol_Message_Types_Image)
    case location(Protocol_Message_Types_Location)
    case notice(Protocol_Message_Types_Notice)
    case businessCard(Protocol_Message_Types_BusinessCard)
    case json(Protocol_Message_Types_Json)
    case notify(Protocol_Message_Types_BusinessNotify)
    case login(Protocol_Message_Commands_Login)
    case withdraw(Protocol_Message_Commands_Withdraw)
    case groupOperation(Protocol_Message_Commands_GroupOperation)
    case friendOperation(Protocol_Message_Commands_FriendOperation)

    static func ==(lhs: Protocol_Message_Message.OneOf_Data, rhs: Protocol_Message_Message.OneOf_Data) -> Bool {
      switch (lhs, rhs) {
      case (.text(let l), .text(let r)): return l == r
      case (.voice(let l), .voice(let r)): return l == r
      case (.card(let l), .card(let r)): return l == r
      case (.image(let l), .image(let r)): return l == r
      case (.location(let l), .location(let r)): return l == r
      case (.notice(let l), .notice(let r)): return l == r
      case (.businessCard(let l), .businessCard(let r)): return l == r
      case (.json(let l), .json(let r)): return l == r
      case (.notify(let l), .notify(let r)): return l == r
      case (.login(let l), .login(let r)): return l == r
      case (.withdraw(let l), .withdraw(let r)): return l == r
      case (.groupOperation(let l), .groupOperation(let r)): return l == r
      case (.friendOperation(let l), .friendOperation(let r)): return l == r
      default: return false
      }
    }
  }

  init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularUInt64Field(value: &_storage._id)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._from)
        case 3:
          var v: Protocol_Message_Misc_User?
          if let current = _storage._to {
            try decoder.handleConflictingOneOf()
            if case .user(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._to = .user(v)}
        case 4:
          var v: Protocol_Message_Misc_Group?
          if let current = _storage._to {
            try decoder.handleConflictingOneOf()
            if case .group(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._to = .group(v)}
        case 5:
          var v: Protocol_Message_Types_Text?
          if let current = _storage._data {
            try decoder.handleConflictingOneOf()
            if case .text(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._data = .text(v)}
        case 6:
          var v: Protocol_Message_Types_Voice?
          if let current = _storage._data {
            try decoder.handleConflictingOneOf()
            if case .voice(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._data = .voice(v)}
        case 7:
          var v: Protocol_Message_Types_Card?
          if let current = _storage._data {
            try decoder.handleConflictingOneOf()
            if case .card(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._data = .card(v)}
        case 8:
          var v: Protocol_Message_Types_Image?
          if let current = _storage._data {
            try decoder.handleConflictingOneOf()
            if case .image(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._data = .image(v)}
        case 9:
          var v: Protocol_Message_Types_Location?
          if let current = _storage._data {
            try decoder.handleConflictingOneOf()
            if case .location(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._data = .location(v)}
        case 10:
          var v: Protocol_Message_Types_Notice?
          if let current = _storage._data {
            try decoder.handleConflictingOneOf()
            if case .notice(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._data = .notice(v)}
        case 11:
          var v: Protocol_Message_Types_BusinessCard?
          if let current = _storage._data {
            try decoder.handleConflictingOneOf()
            if case .businessCard(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._data = .businessCard(v)}
        case 12:
          var v: Protocol_Message_Types_Json?
          if let current = _storage._data {
            try decoder.handleConflictingOneOf()
            if case .json(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._data = .json(v)}
        case 13:
          var v: Protocol_Message_Types_BusinessNotify?
          if let current = _storage._data {
            try decoder.handleConflictingOneOf()
            if case .notify(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._data = .notify(v)}
        case 15:
          var v: Protocol_Message_Commands_Login?
          if let current = _storage._data {
            try decoder.handleConflictingOneOf()
            if case .login(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._data = .login(v)}
        case 16:
          var v: Protocol_Message_Commands_Withdraw?
          if let current = _storage._data {
            try decoder.handleConflictingOneOf()
            if case .withdraw(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._data = .withdraw(v)}
        case 17:
          var v: Protocol_Message_Commands_GroupOperation?
          if let current = _storage._data {
            try decoder.handleConflictingOneOf()
            if case .groupOperation(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._data = .groupOperation(v)}
        case 18:
          var v: Protocol_Message_Commands_FriendOperation?
          if let current = _storage._data {
            try decoder.handleConflictingOneOf()
            if case .friendOperation(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._data = .friendOperation(v)}
        default: break
        }
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if _storage._id != 0 {
        try visitor.visitSingularUInt64Field(value: _storage._id, fieldNumber: 1)
      }
      if let v = _storage._from {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      switch _storage._to {
      case .user(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      case .group(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      case nil: break
      }
      switch _storage._data {
      case .text(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      case .voice(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
      case .card(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
      case .image(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
      case .location(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 9)
      case .notice(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 10)
      case .businessCard(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 11)
      case .json(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 12)
      case .notify(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 13)
      case .login(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 15)
      case .withdraw(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 16)
      case .groupOperation(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 17)
      case .friendOperation(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 18)
      case nil: break
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "protocol.message"

extension Protocol_Message_Message: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "from"),
    3: .same(proto: "user"),
    4: .same(proto: "group"),
    5: .same(proto: "text"),
    6: .same(proto: "voice"),
    7: .same(proto: "card"),
    8: .same(proto: "image"),
    9: .same(proto: "location"),
    10: .same(proto: "notice"),
    11: .same(proto: "businessCard"),
    12: .same(proto: "json"),
    13: .same(proto: "notify"),
    15: .same(proto: "login"),
    16: .same(proto: "withdraw"),
    17: .same(proto: "groupOperation"),
    18: .same(proto: "friendOperation"),
  ]

  fileprivate class _StorageClass {
    var _id: UInt64 = 0
    var _from: Protocol_Message_Misc_User? = nil
    var _to: Protocol_Message_Message.OneOf_To?
    var _data: Protocol_Message_Message.OneOf_Data?

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _id = source._id
      _from = source._from
      _to = source._to
      _data = source._data
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  func _protobuf_generated_isEqualTo(other: Protocol_Message_Message) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._id != other_storage._id {return false}
        if _storage._from != other_storage._from {return false}
        if _storage._to != other_storage._to {return false}
        if _storage._data != other_storage._data {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
