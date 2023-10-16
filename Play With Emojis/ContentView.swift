//
//  ContentView.swift
//  Play With Emojis
//
//  Created by Anurag Pathak on 15/10/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var data: EmojiList
    
    var body: some View {
        List {
            Section(header: Text("Dance")) {
                NavigationLink("Make the emojis dance") {
                    DanceEmojis()
                        .navigationTitle("Dance emojis")
                }
            }
            
            Section(header: Text("Emojis")) {
                ForEach(data.emojis) { emoji in
                    EmojiRow(emoji: emoji)
                }
                .onDelete { indexSet in
                    data.emojis.remove(atOffsets: indexSet)
                }
            }
        }
        .toolbar {
            ToolbarItem {
                NavigationLink("Add") {
                    AddEmoji()
                        .navigationTitle("New Emoji")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static let data = EmojiList()
    
    static var previews: some View {
        ContentView()
            .environmentObject(data)
    }
}
