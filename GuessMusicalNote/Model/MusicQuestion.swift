//
//  Questions.swift
//  Musicality-try#1
//
//  Created by Andrey Vanakoff on 13/09/2021.
//

import Foundation


struct MusicQuestion {
    let title: MusicNote
    let answers: [Answer]
    
    static func getQuestions() -> [MusicQuestion] {
        [
            MusicQuestion(title: .A,
                          answers: [
                            Answer(musicNote: .A, answer: true),
                            Answer(musicNote: .H, answer: false),
                            Answer(musicNote: .C, answer: false)
                          ]),
            MusicQuestion(title: .H,
                          answers: [
                            Answer(musicNote: .C, answer: false),
                            Answer(musicNote: .H, answer: true),
                            Answer(musicNote: .G, answer: false)
                          ]),
            MusicQuestion(title: .C,
                          answers: [
                            Answer(musicNote: .F, answer: false),
                            Answer(musicNote: .C, answer: true),
                            Answer(musicNote: .G, answer: false)
                          ]),
            MusicQuestion(title: .D,
                          answers: [
                            Answer(musicNote: .C, answer: false),
                            Answer(musicNote: .D, answer: true),
                            Answer(musicNote: .F, answer: false)
                          ]),
            MusicQuestion(title: .E,
                          answers: [
                            Answer(musicNote: .A, answer: false),
                            Answer(musicNote: .H, answer: false),
                            Answer(musicNote: .E, answer: true)
                          ]),
            MusicQuestion(title: .F,
                          answers: [
                            Answer(musicNote: .F, answer: true),
                            Answer(musicNote: .E, answer: false),
                            Answer(musicNote: .D, answer: false)
                          ]),
            MusicQuestion(title: .G,
                          answers: [
                            Answer(musicNote: .A, answer: false),
                            Answer(musicNote: .H, answer: false),
                            Answer(musicNote: .G, answer: true)
                          ]),
            MusicQuestion(title: .A,
                          answers: [
                            Answer(musicNote: .E, answer: false),
                            Answer(musicNote: .H, answer: false),
                            Answer(musicNote: .A, answer: true)
                          ]),
            MusicQuestion(title: .H,
                          answers: [
                            Answer(musicNote: .C, answer: false),
                            Answer(musicNote: .H, answer: true),
                            Answer(musicNote: .F, answer: false)
                          ]),
            MusicQuestion(title: .C,
                          answers: [
                            Answer(musicNote: .E, answer: false),
                            Answer(musicNote: .G, answer: false),
                            Answer(musicNote: .C, answer: true)
                          ])
        ]
    }
}

struct Answer {
    let musicNote: MusicNote
    let answer: Bool
}

enum MusicNote: String {
    case A = "A"
    case H = "H"
    case C = "C"
    case D = "D"
    case E = "E"
    case F = "F"
    case G = "G"
}
