//
//  questionData.swift
//  16P
//
//  Created by Theerabhop Suakaraya on 12/3/2567 BE.
//

import Foundation

struct qData: Identifiable{
    var id = UUID()
    var question: String
    var choice1: String
    var choice2: String
    var addition: Int
}



extension qData{
    static let PTest: [qData] = [
        qData(question: "Which one is more like you?", choice1: "Have a lot of different friends that can talk about many things.", choice2: "Have few closed-friend.  understand each other's thoughts and feelings", addition: 1000),
        qData(question: "Most of the time, you enjoy.", choice1: "Work that can discussing with others.", choice2: "Work that involves your thinking and thinking alone.", addition: 1000),
        qData(question: "Your communication style...", choice1: "Speech that has been spoken incorrectly cannot be corrected.", choice2: "Writing where mistakes cannot be erased", addition: 1000),
        qData(question: "Your style", choice1: "Like the interpretation of the idea and how to connect it further.", choice2: "Like clear explanations that are easy to understand.", addition: 100),
        qData(question: "You see yourself as", choice1: "Someone who has ideas and understands the overall situation of the problem.", choice2: "A person who pays attention to the details of work or people", addition: 100),
        qData(question: "Most of you are", choice1: "Feels fun, more fun, or more satisfying when you have new ideas and new ideas outside the box.", choice2: "Feels more comfortable and safer if you follow the principles or patterns that have been established.", addition: 100),
        qData(question: "If you have to buy a new mobile phone... The important things which make you decide to buy", choice1: "Usage", choice2: "Satisfaction", addition: 10),
        qData(question: "That deep feeling when you don't agree with what someone else says.", choice1: "I want to argue. I don't like it. I have doubts.", choice2: "I want to let it pass.  I don't like conflict.", addition: 10),
        qData(question: "You want...", choice1: "Direct advice No need to circumvent... No need to be considerate", choice2: "Words of comfort, encouragement, confidence that you will get through it.", addition: 10),
        qData(question: "Your habits...", choice1: "Finish your work before you can rest.", choice2: "Take it slow and easy.", addition: 1),
        qData(question: "When you do something...", choice1: "I like to finish one thing at a time, otherwise I'll feel restless.", choice2: "I like to do a variety of things, otherwise I'll get bored.", addition: 1),
        qData(question: "Would you say your personality is", choice1: "More mature than your actual age", choice2: "Yonger than your actual age", addition: 1)
    ]
}
