//
//  PlayerListView.swift
//  dart-app
//
//  Created by Florian Müller on 21.12.22.
//

import SwiftUI

struct PlayerListView: View {
    
    @EnvironmentObject var gameState: GameStateModel
    
    var body: some View {
        LazyVGrid(columns: [GridItem(), GridItem()], spacing: 10) {
            ForEach(gameState.players) { player in
                HStack {
                    Image(systemName: "person.crop.circle.fill")
                        .font(.system(size: 26.0))
                        .foregroundColor(.white)
                    VStack (alignment: .leading) {
                        Text(player.name)
                            .fontWeight(.bold)
                    }
                }
                
            }
        }
        .padding(.horizontal, 20)
    }
}

struct PlayerListView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerListView()
    }
}
