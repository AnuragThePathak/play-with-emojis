//
//  Emoji.swift
//  Play With Emojis
//
//  Created by Anurag Pathak on 16/10/23.
//

import SwiftUI

class EmojiList : ObservableObject {
    @Published var emojis = [
        Emoji(name: "Man", emoji: "🚶‍♂️"),
        Emoji(name: "Golfer", emoji: "🏌️‍♂️"),
        Emoji(name: "Monkey", emoji: "🐒"),
        Emoji(name: "Cat", emoji: "🐈"),
    ]
}

struct Emoji : Identifiable {
    var name: String
    var emoji: String
    
    let id = UUID()
    var offsets = CGSize.zero
    var rotation = Angle.zero
}

extension EmojiList {
    func randomizeOffests() {
        for index in emojis.indices {
            emojis[index].offsets = CGSize(width: CGFloat.random(in: -100...100), height: CGFloat.random(in: -200...200))
            emojis[index].rotation = Angle(degrees: Double.random(in: 0...360))
        }
    }
}
