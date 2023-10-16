//
//  Play_With_EmojisApp.swift
//  Play With Emojis
//
//  Created by Anurag Pathak on 15/10/23.
//

import SwiftUI

@main
struct Play_With_EmojisApp: App {
    @StateObject private var data = EmojiList()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
                    .navigationTitle("My Emotes")
            }.environmentObject(data)
        }
    }
}
