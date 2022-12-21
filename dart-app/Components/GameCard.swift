//
//  GameCard.swift
//  dart-app
//
//  Created by Florian Müller on 17.07.22.
//

import SwiftUI

struct GameCard: View {
    
    var card: GameModel
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15, style: .continuous)
                .fill(.white)
                .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 10)
            VStack {
                Image(card.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text(card.name)
                    .font(.largeTitle)
                    .foregroundColor(.black)
                Text(card.description)
                    .font(.caption2)
                Spacer()
            }
            .padding(20)
            .multilineTextAlignment(.center)
        }
        .frame(width: 300, height: 300)
    }
}

struct GameCard_Previews: PreviewProvider {
    static var previews: some View {
        GameCard(card: MockData.game)
    }
}
