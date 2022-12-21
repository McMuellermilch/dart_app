//
//  PlayerInListView.swift
//  game
//
//  Created by Florian Müller on 20.12.22.
//

import SwiftUI

struct PlayerInList: View {
    
    let player: PlayerModel
    
    var body: some View {
        HStack {
            Image(systemName: "person.crop.circle.fill")
                .font(.system(size: 26.0))
                .foregroundColor(.gray)
            VStack(alignment: .leading) {
                Text(player.name)
                    .fontWeight(.bold)
            }
        }
        .frame(alignment: .leading)
    }
}

struct PlayerInList_Previews: PreviewProvider {

    static var previews: some View {
        PlayerInList(player: PlayerModel(name: "Steve",  points: 0))
    }
}
