import Node
import JSON

extension JSONRepresentable where Self: NodeRepresentable {
    public func makeJSON() throws -> JSON {
        let node = try makeNode()
        return try JSON(node: node)
    }
}

extension JSONInitializable where Self: NodeInitializable {
    public init(json: JSON) throws {
        let node = try json.makeNode()
        try self.init(node: node)
    }
}

