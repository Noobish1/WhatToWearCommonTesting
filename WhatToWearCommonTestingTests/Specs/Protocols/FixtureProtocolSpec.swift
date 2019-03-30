import Quick
import Nimble
import Rswift
import Foundation
@testable import WhatToWearCommonTesting

private struct BasicModel: Codable {
    let firstName: String
    let lastName: String
}

extension BasicModel: Fixturable {
    fileprivate enum Fixtures: FixtureProtocol {
        typealias EnclosingType = BasicModel
        
        case validPath
        
        fileprivate var url: URL {
            switch self {
                case .validPath: return R.file.basicModelJson()!
            }
        }
    }
}

internal final class FixtureProtocolSpec: QuickSpec {
    internal override func spec() {
        describe("FixtureProtocol") {
            beforeSuite {
                // For some crazy reason we need this otherwise we get
                // dyld: Library not loaded: @rpath/libswiftSwiftOnoneSupport.dylib
                // https://stackoverflow.com/a/53654879/9171684
                print()
            }
            
            describe("its object for bundle") {
                var fixture: BasicModel.Fixtures!
                
                beforeEach {
                    fixture = BasicModel.fixtures.validPath
                }
                
                it("should return an object of the enclosing type for the given fixture") {
                    expect(try! fixture.object()).toNot(beNil())
                }
            }
            
            describe("its fixtureData") {
                var fixture: BasicModel.Fixtures!
                
                beforeEach {
                    fixture = BasicModel.fixtures.validPath
                }
                
                it("should the data for that resource") {
                    expect(try! fixture.fixtureData()).toNot(beNil())
                }
            }
        }
    }
}
