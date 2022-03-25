
struct Answer {
    let text: String
    let type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "You enjoy being with friends."
        case .cat:
            return "You enjoy being alone."
        case .rabbit:
            return "You are full of energy."
        case .turtle:
            return "You are thoughtful"
        }
    }
}
