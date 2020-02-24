//
//  Player.swift
//  CardGameApp
//
//  Created by delma on 10/02/2020.
//  Copyright © 2020 delma. All rights reserved.
//

import Foundation
class Player: Equatable {
    private var hands = Hands()
    private var isWinner = false
    
    func appendCard(_ card: Card) {
        hands.append(card)
    }
    
    func forEachCard(handler: (Card) -> () ) {
        hands.forEach(handler)
    }
    
    func result() -> Hands.GameResult {
        return hands.judgeResult()
    }
    
    func winGame() {
        isWinner = true
    }
    
    func sortCards() -> [Card] {
        return hands.sortCards()
    }
    
    static func == (lhs: Player, rhs: Player) -> Bool {
        return lhs.hands == rhs.hands
      }
    
}
