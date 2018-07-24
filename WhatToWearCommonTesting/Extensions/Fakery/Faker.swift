import Fakery
import Foundation

internal extension Faker {
    internal func randomDate() -> Date {
        return Date(timeIntervalSince1970: number.randomDouble())
    }
}
