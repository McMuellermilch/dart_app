//
//  GameStateModel.swift
//  dart-app
//
//  Created by Florian Müller on 21.12.22.
//

import Foundation
import SwiftUI

class GameStateModel: ObservableObject {
    @Published var players: [PlayerModel] = []
    @Published var games: [GameModel] = []
    @Published var selectedGame: GameModel?
    
    init() {
        self.games = MockData.games
    }
    
    func checkIfEnoughPlayers() -> Bool {
        return players.count > 1 ? true : false
    }
    
    func addPlayer(name: String, initialPoints: Int) {
        players.append(PlayerModel(name: name))
    }
    
    func selectGame(game: GameModel) {
        selectedGame = game
    }
}
