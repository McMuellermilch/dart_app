//
//  PlayerSelectionView.swift
//  dart-app
//
//  Created by Florian Müller on 21.12.22.
//

import SwiftUI

struct PlayerSelectionView: View {
    
    @EnvironmentObject var gameState: GameStateModel
    @State var username: String = ""
    
    var body: some View {
        VStack {
            HStack {
                TextField("Add new player", text: $username)
                    .textFieldStyle(.roundedBorder)
                Button("+") {
                    if username != "" {
                        gameState.addPlayer(name: username, initialPoints: 0)
                        username = ""
                    }
                    
                }
            }
            .padding(20)
            List {
                ForEach(gameState.players) { player in
                    PlayerInList(player: player)
                }.onDelete { indexSet in
                    gameState.players.remove(atOffsets: indexSet)
                }
            }
            .scrollContentBackground(.hidden)
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 10)
            .modifier(EmptyModifier(isEmpty: gameState.players.isEmpty))
            .listStyle(.insetGrouped)
            .padding(10)
            Spacer()
        }
        .padding(20)
    }
}

struct PlayerSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerSelectionView()
    }
}
