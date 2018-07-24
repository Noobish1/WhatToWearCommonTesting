import Quick
import Nimble
import Fakery
@testable import WhatToWearCommonTesting

internal final class FakerSpec: QuickSpec {
    internal override func spec() {
        describe("Faker") {
            describe("its randomDate") {
                var firstDate: Date!
                var secondDate: Date!
                
                beforeEach {
                    let faker = Faker()
                    
                    firstDate = faker.randomDate()
                    secondDate = faker.randomDate()
                }
                
                it("should return a random date") {
                    expect(firstDate) != secondDate
                }
            }
        }
    }
}
