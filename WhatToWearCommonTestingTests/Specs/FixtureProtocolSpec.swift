import Quick
import Nimble
@testable import WhatToWearCommonTesting

private struct BasicModel: Codable {
    let firstName: String
    let lastName: String
}

private enum TestFixture: String, FixtureProtocol {
    typealias EnclosingType = BasicModel
    
    case badPath = "not-a-file"
    case validPath = "basic-model"
}

internal final class FixtureProtocolSpec: QuickSpec {
    internal override func spec() {
        describe("FixtureProtocol") {
            var bundle: Bundle!
            
            beforeEach {
                bundle = Bundle(for: type(of: self))
            }
            
            describe("its object for bundle") {
                var fixture: TestFixture!
                
                beforeEach {
                    fixture = .validPath
                }
                
                it("should return an object of the enclosing type for the given fixture") {
                    expect(try! fixture.object(for: bundle)).toNot(beNil())
                }
            }
            
            describe("its fixtureData for bundle") {
                var fixture: TestFixture!
                
                context("when a path for the given resource cannot be found") {
                    beforeEach {
                        fixture = .badPath
                    }
                    
                    it("should fatalError") {
                        expect(expression: {
                            _ = try! fixture.fixtureData(for: bundle)
                        }).to(throwAssertion())
                    }
                }
                
                context("when a path for the given resource can be found") {
                    beforeEach {
                        fixture = .validPath
                    }
                    
                    it("should the data for that resource") {
                        expect(try! fixture.fixtureData(for: bundle)).toNot(beNil())
                    }
                }
            }
        }
    }
}
