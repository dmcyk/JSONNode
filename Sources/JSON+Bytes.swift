import Core
import JSON


extension JSON: BytesConvertible {
    public func makeBytes() throws -> Bytes {
        return try serialized().bytes
    }

    public init(bytes: Bytes) throws {
        try self.init(serialized: bytes)
    }
}
