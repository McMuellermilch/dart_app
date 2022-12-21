//
//  HomeView.swift
//  dart-app
//
//  Created by Florian Müller on 17.07.22.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var gameState: GameStateModel
    
    @ViewBuilder
    var body: some View {
        ZStack {
            NavigationView {
                ZStack {
                    LinearGradient(gradient: Gradient(colors: [Color("EveningNightLight"), Color("EveningNightBlue")]),
                                   startPoint: .topLeading,
                                   endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                    ScrollView {
                        GameSelectionView()
                        Spacer()
                        if gameState.selectedGame != nil {
                            
                        }
                    }
                    
                    .navigationTitle("Spiele")
                }
            }
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeView()
                .preferredColorScheme(.dark)
        }
    }
}
