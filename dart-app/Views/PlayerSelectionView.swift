//
//  PlayerSelectionView.swift
//  dart-app
//
//  Created by Florian Müller on 21.12.22.
//

import SwiftUI

struct PlayerSelectionView: View {
    
    @EnvironmentObject var gameState: GameStateModel
    
    var body: some View {
        List {
            ForEach(gameState.players) { player in
                PlayerInList(player: player)
            }.onDelete { indexSet in
                gameState.players.remove(atOffsets: indexSet)
            }
        }
        
        .scrollContentBackground(.hidden)
        .frame(maxHeight: 250.0)
        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 10)
        .modifier(EmptyModifier(isEmpty: gameState.players.isEmpty))
        .listStyle(.insetGrouped)
    }
}

struct PlayerSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerSelectionView()
    }
}
