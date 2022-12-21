//
//  GameSelectionView.swift
//  dart-app
//
//  Created by Florian Müller on 21.12.22.
//

import SwiftUI

struct GameSelectionView: View {
    @EnvironmentObject var gameState: GameStateModel
    
    var body: some View {
        TabView {
            ForEach(MockData.games) {
                item in GameCard(card: item)
                    .onTapGesture {
                        gameState.selectedGame = item
                    }
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        .frame(height: 350)
    }
}

struct GameSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        GameSelectionView()
    }
}
