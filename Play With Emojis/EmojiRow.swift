//
//  EmojiRow.swift
//  Play With Emojis
//
//  Created by Anurag Pathak on 16/10/23.
//

import SwiftUI

struct EmojiRow: View {
    var emoji: Emoji
    
    var body: some View {
        HStack {
            Text(emoji.name)
                .font(.title)
            Spacer()
            Text(emoji.emoji)
                .font(.system(size: 96))
                
        }
    }
}

struct EmojiRow_Previews: PreviewProvider {
    static var previews: some View {
        EmojiRow(emoji: Emoji(name: "Ghost", emoji: "👻"))
    }
}
