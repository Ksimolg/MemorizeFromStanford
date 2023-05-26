//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Роман Исламов on 23.05.2023.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
