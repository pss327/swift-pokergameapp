//
//  Card.swift
//  PokerGameApp
//
//  Created by kiyoungj on 2021/02/16.
//

import Foundation

class Card {
    
    enum Suit: Character, CaseIterable {
        
        case spades = "♠️"
        case clubs = "♣️"
        case hearts = "❤️"
        case diamonds = "♦️"
    }
    
    enum Rank: String, CaseIterable {
        case one = "A",
             two = "2",
             three = "3",
             four = "4",
             five = "5",
             six = "6",
             seven = "7",
             eight = "8",
             nine = "9",
             ten = "10",
             eleven = "J",
             twelve = "Q",
             thirteen = "K"
    }
    
    let rank: Rank
    let suit: Suit
    
    init(rank: Rank, suit: Suit){
        self.rank=rank
        self.suit=suit
    }
    
}

extension Card : CustomStringConvertible {
    
    var description: String {
        
        return String(self.suit.rawValue)+self.rank.rawValue
    }
}
