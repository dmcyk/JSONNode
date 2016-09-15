import Core
import JSON

public enum JSONError: Error {
    case allowFragmentsNotSupported
}

extension JSON {
    public init(
        serialized: Bytes,
        allowComments: Bool = false,
        allowFragments: Bool = false
    ) throws {

       
        
        var parsing: JSON.Parser.Option = []
        if allowComments {
            parsing.formUnion(.allowComments)
        }
        if allowFragments {
            parsing.formUnion(.allowFragments)
        }
        self = try JSON.Parser.parse(serialized, options: parsing)
    }
}
