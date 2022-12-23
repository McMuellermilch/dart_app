//
//  DartsGameModel.swift
//  dart-app
//
//  Created by Florian Müller on 22.12.22.
//

import Foundation
import SwiftUI

class DartsGameModel: ObservableObject {
    @Published var players: [PlayerModel] = []
    @Published var activePlayer: PlayerModel
    @Published var doubleModifier: Bool = false
    @Published var tripleModifier: Bool = false
    let initialPoints: Int
    
    init(players: [PlayerModel], initialPoints: Int) {
        self.players = players
        self.initialPoints = initialPoints
        self.activePlayer = players[0]
    }

    func initPlayers(){
        self.players = players.map { (player: PlayerModel) -> PlayerModel in
            return PlayerModel(name: player.name, points: initialPoints)
        }
        self.activePlayer = players[0]
    }
    
    func deductPointsForPlayerId(points: Int) {
        print("deducting points from \(activePlayer.name) by \(points)")
        if let player = players.firstIndex(where: {$0.id == activePlayer.id}) {
            players[player].points! -= points
            activePlayer.points! -= points
        } else {
            print("not found...")
        }
    }
    
    func iteratePlayer() {
        //find index of current player in list
        let currentIndex = players.firstIndex(where: {$0.id == activePlayer.id})
        print(currentIndex!)
        //check if next player is in range
    }
    
}
