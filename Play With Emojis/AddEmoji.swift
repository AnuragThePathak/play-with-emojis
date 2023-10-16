//
//  AddEmoji.swift
//  Play With Emojis
//
//  Created by Anurag Pathak on 16/10/23.
//

import SwiftUI

struct AddEmoji: View {
    @State var newEmoji = Emoji(name: "", emoji: "")
    @EnvironmentObject private var data: EmojiList
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack {
            Form {
                Section("Info") {
                    TextField("Name", text: $newEmoji.name)
                    TextField("Emoji", text: $newEmoji.emoji)
                }
                
                Section(header: Text("Preview")) {
                    HStack {
                        Spacer()
                        Text(newEmoji.emoji)
                            .font(.system(size: 144))
                        Spacer()
                    }
                    
                }
            }
        }
        .toolbar {
            ToolbarItem {
                Button("Done") {
                    data.emojis.append(newEmoji)
                    dismiss()
                }
            }
        }
    }
}

struct AddEmoji_Previews: PreviewProvider {
    static let data = EmojiList()
    static var newEmoji = Emoji(name: "Dog", emoji: "🐕")
    
    static var previews: some View {
        AddEmoji(newEmoji: newEmoji)
            .environmentObject(data)
    }
}
