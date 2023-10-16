//
//  DanceEmotes.swift
//  Play With Emojis
//
//  Created by Anurag Pathak on 16/10/23.
//

import SwiftUI

struct DanceEmojis: View {
    @EnvironmentObject private var data: EmojiList
    
    var body: some View {
        ZStack {
            ForEach (data.emojis) { emoji in
                Text(emoji.emoji)
                    .font(.system(size: 144))
                    .offset(emoji.offsets)
                    .rotationEffect(emoji.rotation)
                    .animation(.spring(response: 0.45, dampingFraction: 0.3, blendDuration: 0.7), value: emoji.offsets)
            }
        }
        .onTapGesture {
            data.randomizeOffests()
        }
    }
}

struct DanceEmotes_Previews: PreviewProvider {
    static let data = EmojiList()
    
    static var previews: some View {
        DanceEmojis()
            .environmentObject(data)
    }
}
