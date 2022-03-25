
enum ResponseType {
    case single
    case multiple
    case ranged
}

struct Question {
    let text: String
    let type: ResponseType
    let answers: [Answer]
}

extension Question {
    static func getQuestions() -> [Question] {
        return [
            Question(
                text: "Which food do you prefer?",
                type: .single,
                answers: [
                    Answer(text: "Steak", type: .dog),
                    Answer(text: "Fish", type: .cat),
                    Answer(text: "Carrot", type: .rabbit),
                    Answer(text: "Corn", type: .turtle)
            ]),
            Question(
                text: "Which activities do you enjoy?",
                type: .multiple,
                answers: [
                    Answer(text: "Swimming", type: .dog),
                    Answer(text: "Sleeping", type: .cat),
                    Answer(text: "Hugging", type: .rabbit),
                    Answer(text: "Eating", type: .turtle)
            ]),
            Question(
                text: "Do you enjoy traveling in the car?",
                type: .ranged,
                answers: [
                    Answer(text: "Hate", type: .cat),
                    Answer(text: "Stressed", type: .rabbit),
                    Answer(text: "No matter", type: .turtle),
                    Answer(text: "Love", type: .dog)
            ])
        ]
    }
}
