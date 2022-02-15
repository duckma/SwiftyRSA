import Foundation
import CommonCrypto

extension Data {

  func rsaSha1() -> Data {
    var digest = [UInt8](repeating: 0, count: Int(CC_SHA1_DIGEST_LENGTH))
    withUnsafeBytes { (buffer: UnsafeRawBufferPointer) in
      _ = CC_SHA1(buffer.baseAddress, CC_LONG(count), &digest)
    }
    return Data(digest)
  }

  func rsaSha224() -> Data {
    var digest = [UInt8](repeating: 0, count: Int(CC_SHA224_DIGEST_LENGTH))
    withUnsafeBytes { (buffer: UnsafeRawBufferPointer) in
      _ = CC_SHA224(buffer.baseAddress, CC_LONG(count), &digest)
    }
    return Data(digest)
  }

  func rsasha256() -> Data {
    var digest = [UInt8](repeating: 0, count: Int(CC_SHA256_DIGEST_LENGTH))
    withUnsafeBytes { (buffer: UnsafeRawBufferPointer) in
      _ = CC_SHA256(buffer.baseAddress, CC_LONG(count), &digest)
    }
    return Data(digest)
  }

  func rsasha384() -> Data {
    var digest = [UInt8](repeating: 0, count: Int(CC_SHA384_DIGEST_LENGTH))
    withUnsafeBytes { (buffer: UnsafeRawBufferPointer) in
      _ = CC_SHA384(buffer.baseAddress, CC_LONG(count), &digest)
    }
    return Data(digest)
  }

  func rsasha512() -> Data {
    var digest = [UInt8](repeating: 0, count: Int(CC_SHA512_DIGEST_LENGTH))
    withUnsafeBytes { (buffer: UnsafeRawBufferPointer) in
      _ = CC_SHA512(buffer.baseAddress, CC_LONG(count), &digest)
    }
    return Data(digest)
  }
}
