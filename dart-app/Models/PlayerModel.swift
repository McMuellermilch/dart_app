//
//  PlayerModel.swift
//  game
//
//  Created by Florian Müller on 20.12.22.
//

import Foundation

struct PlayerModel: Identifiable {
    let id = UUID()
    var name: String
    var points: Int?
}

extension PlayerModel {
    init(name: String, points: Int) {
        self.name = name
        self.points = points
    }
}
