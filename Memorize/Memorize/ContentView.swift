//
//  ContentView.swift
//  Memorize
//
//  Created by Роман Исламов on 23.05.2023.
//

import SwiftUI

struct ContentView: View {

    
    var viewModel: EmojiMemoryGame

    
    var body: some View {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]){
                    ForEach (viewModel.cards) { card in
                        CardView(card:card)
                            .aspectRatio(2/3, contentMode: .fit)
                            .onTapGesture {
                                viewModel.choose(card)
                            }
                    }
                }
            }
            .foregroundColor(.red)
     
            .font(.largeTitle)
            .padding(.horizontal)
            .padding(.horizontal)
    }

}


struct CardView: View {
    
    let card: MemoryGame<String>.Card
    
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20.0)
            if card.isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(card.content).font(.largeTitle)
                
            } else {
                shape.fill()
            }
        }
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            let game = EmojiMemoryGame()
            ContentView(viewModel: game)
                .preferredColorScheme(.dark)
                .previewDevice("iPhone 14 Pro")
            ContentView(viewModel: game)
                .previewDevice("iPhone 14 Pro")
        }
    }

