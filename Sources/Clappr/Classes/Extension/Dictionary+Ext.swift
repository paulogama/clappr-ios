import Foundation

extension Dictionary where Key == String, Value == Any {
    var startAt: Double? {
        switch self[kStartAt] {
        case is Double:
            return self[kStartAt] as? Double
        case let startAt as Int:
            return Double(startAt)
        case let startAt as String:
            return Double(startAt)
        default:
            return nil
        }
    }
}

public extension Dictionary where Key == String, Value == Any {
    func bool(_ option: String, orElse alternative: Bool = false) -> Bool {
        if let value = self[option] as? Bool {
            return value
        }
        return alternative
    }
}
