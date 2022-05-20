//
//  Card.swift
//  Flashzilla
//
//  Created by Nitish Solanki on 19/05/22.
//

import Foundation

struct Card: Codable, Identifiable {
    var id = UUID()
    let prompt: String
    let answer: String
    
    static let example = Card(prompt: "Who played the 13th Doctor in Doctor Who?", answer: "Jodie Whittaker")
}
