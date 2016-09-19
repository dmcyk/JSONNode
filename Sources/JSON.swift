import Foundation
import Core
@_exported import Node
@_exported import JSON
@_exported import JSONCore

extension JSON: NodeConvertible {

    public init(node: Node, in context: Context) throws {
        self = node.toJSON()
    }
    
    public func makeNode(context: Context) throws -> Node {
        return toNode()
    }
}
