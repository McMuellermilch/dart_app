//
//  ClassicDartKeyboardView.swift
//  dart-app
//
//  Created by Florian Müller on 22.12.22.
//

import SwiftUI

struct ClassicDartKeyboardView: View {
    
    @EnvironmentObject var dartGameState: DartsGameModel
    @State var gridSpacing: CGFloat = 2
    
    @ViewBuilder
    var body: some View {
        VStack(spacing: gridSpacing){
            HStack(spacing: gridSpacing){
                BackButton()
                ModifierButton(label: "d", modifierActive: dartGameState.doubleModifier, modifierBool: $dartGameState.doubleModifier)
                ModifierButton(label: "t", modifierActive: dartGameState.tripleModifier, modifierBool: $dartGameState.tripleModifier)
            }
            LazyVGrid(columns: [GridItem(spacing: gridSpacing), GridItem(spacing: gridSpacing), GridItem(spacing: gridSpacing), GridItem(spacing: gridSpacing), GridItem(spacing: gridSpacing), GridItem(spacing: gridSpacing), GridItem(spacing: gridSpacing)], spacing: gridSpacing) {
                ForEach(1 ..< 21) {item in
                    DartButton(item: item)
                }
                if !dartGameState.tripleModifier {
                    DartButton(item: 25)
                }
                
            }
            MissButton()
        }
        .ignoresSafeArea()
    }
}

struct ClassicDartKeyboardView_Previews: PreviewProvider {
    static var previews: some View {
        ClassicDartKeyboardView()
    }
}
