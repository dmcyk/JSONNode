import Core
import JSON
extension JSON {
    public func serialize(
        prettyPrint: Bool = false
    ) throws -> Bytes {
        
        let option: JSON.Serializer.Option = prettyPrint ? .prettyPrint : []
        return try serialized(options: option).bytes
    }
}
