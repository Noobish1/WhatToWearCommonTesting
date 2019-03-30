import Foundation
import WhatToWearCommonTesting
import Rswift

// MARK: TestModel
internal struct TestModel: Decodable {
    internal let testproperty: String
}

// MARK: Fixturable
extension TestModel: Fixturable {
    internal enum Fixtures: FixtureProtocol {
        typealias EnclosingType = TestModel
        
        case valid
        
        internal var url: URL {
            switch self {
                case .valid: return R.file.testmodelJson()!
            }
        }
    }
}
