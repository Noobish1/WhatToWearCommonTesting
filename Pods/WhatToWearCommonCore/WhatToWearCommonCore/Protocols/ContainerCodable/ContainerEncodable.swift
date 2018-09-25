import Foundation

// MARK: ContainerEncodable
public protocol ContainerEncodable: Encodable {
    associatedtype CodingKeys: ContainerCodingKey
    
    func encodeValue(forKey key: CodingKeys, in container: inout KeyedEncodingContainer<CodingKeys>) throws
}

// MARK: Extensions
public extension ContainerEncodable {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try CodingKeys.allValues.forEach { key in
            try encodeValue(forKey: key, in: &container)
        }
    }
}