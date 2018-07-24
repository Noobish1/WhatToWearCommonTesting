import Fakery
import Foundation

public extension Faker {
    public func randomDate() -> Date {
        return Date(timeIntervalSince1970: number.randomDouble())
    }
}
