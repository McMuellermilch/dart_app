//
//  DartButton.swift
//  dart-app
//
//  Created by Florian Müller on 23.12.22.
//

import SwiftUI

struct DartButton: View {
    @EnvironmentObject var dartGameState: DartsGameModel
    var item: Int
    
    var body: some View {
        Button(action: {dartGameState.deductPointsForPlayerId(points: item)}, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 1, style: .continuous)
                    .fill(Color("BlueLagoon"))
                Text("\(item)")
                    .foregroundColor(.white)
            }
            .frame(height: 45)
        })
    }
}

struct DartButton_Previews: PreviewProvider {
    static var previews: some View {
        DartButton(item: 5)
    }
}
