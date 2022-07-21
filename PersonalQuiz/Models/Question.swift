//
//  Question.swift
//  PersonalQuiz
//
//  Created by Николай Выскребенцев on 20.07.2022.
//

struct Question {
    let title: String
    let responseType: ResponseType
    let answers: [Answer]
    
    static func getQuestions() -> [Question] {
        [
            Question(
                title: "Какую пищу Вы предпочитаете?",
                responseType: .single,
                answers: [
                    Answer(title: "Стейк", animal: .dog),
                    Answer(title: "Рыба", animal: .cat),
                    Answer(title: "Морковь", animal: .rabbit),
                    Answer(title: "Кукуруза", animal: .turtle),
                ]
        ),
            Question(
                title: "Что Вам нравиться больше?",
                responseType: .multiple,
                answers: [
                    Answer(title: "Плавать", animal: .dog),
                    Answer(title: "Спать", animal: .cat),
                    Answer(title: "Обниматься", animal: .rabbit),
                    Answer(title: "Есть", animal: .turtle),
                ]
        ),
            Question(
                title: "Любите ли Вы поездки на машине?",
                responseType: .ranger,
                answers: [
                    Answer(title: "Ненавижу", animal: .cat),
                    Answer(title: "Не очень", animal: .turtle),
                    Answer(title: "Люблю", animal: .rabbit),
                    Answer(title: "Обожаю", animal: .dog),
                ]
        )
        ]
    }
}

enum ResponseType {
    case single
    case multiple
    case ranger
}

struct Answer {
    let title: String
    let animal: Animal
}

enum Animal: Character {
    case dog = "🐶"
    case cat = "😺"
    case rabbit = "🐰"
    case turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "Вы собака и лаете на прохожих"
        case .cat:
            return "Вы кошка и мурлыкаете себе в усы"
        case .rabbit:
            return "Вы кролик с длинными ушами"
        case .turtle:
            return "Вы мудрая черепаха"
        }
    }
}



