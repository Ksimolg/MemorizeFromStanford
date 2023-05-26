//
//  MemoryGame.swift
//  Memorize
//
//  Created by Роман Исламов on 25.05.2023.
//

import Foundation


struct MemoryGame<CardContent> {
  private(set)  var cards: Array<Card>
    
    func choose(_ card: Card) {
        let chosenIndex = index(of: card)
        var chosenCard = cards[chosenIndex]
        chosenCard.isFaceUp.toggle()
        }
    
    func index(of: Card) -> Int {
        return 0
    }
    
    init(numberOfPairsOfCards: Int, createCardContent: (Int)-> CardContent) {
        cards = Array<Card>()
        //add numberOfPairsOfCards x 2 cards to cards array
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = createCardContent(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))

        }
    }
    
    struct Card: Identifiable {
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
    }
}
