//
//  GameModel.swift
//  game
//
//  Created by Florian Müller on 21.12.22.
//

import Foundation

struct GameModel: Identifiable {
    var id = UUID()
    var name: String
    var description: String
    var image: String
}

struct MockData {
    static let game = GameModel(name: "301", description: "Klassisches Darts", image: "301_image")
    static let games = [
        GameModel(name: "301", description: "Klassisches Darts", image: "301_image"),
        GameModel(name: "501", description: "Klassisches Darts", image: "501_image"),
        GameModel(name: "701", description: "Klassisches Darts", image: "701_image")
    ]
}
