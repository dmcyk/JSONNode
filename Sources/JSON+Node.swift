import JSON
import Node

extension JSON {
    
    func toNode() -> Node {
        switch self {
        case .array(let values):
            return .array(values.map { $0.toNode() })
        case .bool(let value):
            return .bool(value)
        case .null:
            return .null
        case .integer(let number):
            return .number(.int(Int(number)))
        case .double(let double):
            return .number(.double(double))
        case .object(let values):
            var dictionary: [String: Node] = [:]
            for (key, value) in values {
                dictionary[key] = value.toNode()
            }
            return .object(dictionary)
        case .string(let value):
            return .string(value)
        }
    }
}

extension Node {
    
    func toJSON() -> JSON {
        switch self {
        case .array(let values):
            return .array(values.map { $0.toJSON() })
        case .bool(let value):
            return .bool(value)
        case .bytes(let bytes):
            return .string(bytes.base64String)
        case .null:
            return .null
        case .number(let number):
            switch number {
            case .double(let double):
                return .double(double)
            case .int(let int):
                return .integer(Int64(int))
            case .uint(let uint):
                return .integer(Int64(uint))
            }
        case .object(let values):
            var dictionary: [String: JSON] = [:]
            for (key, value) in values {
                dictionary[key] = value.toJSON()
            }
            return .object(dictionary)
        case .string(let value):
            return .string(value)
        }
    }
}
