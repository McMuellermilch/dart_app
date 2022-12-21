//
//  HomeView.swift
//  dart-app
//
//  Created by Florian Müller on 17.07.22.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var gameState: GameStateModel
    @State var addPlayerSheetPresent: Bool = false
    
    @ViewBuilder
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color("EveningNightLight"), Color("EveningNightBlue")]),
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing)
                .ignoresSafeArea()
                VStack {
                    GameSelectionView()
                    
                    PlayerListView()
                    Spacer()
                    if gameState.selectedGame != nil && gameState.checkIfEnoughPlayers() {
                        NavigationLink(destination: ClassicDartsView()) {
                            Text("Play \(gameState.selectedGame!.name)")
                                .foregroundColor(.white)
                                .padding()
                        }
                        .buttonStyle(.bordered)
                    }
                }
                .navigationTitle("Spiele")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {addPlayerSheetPresent = true}) {
                            Image(systemName: "person.3.fill")
                                .padding(.horizontal)
                        }
                    }
                    
                }
                .tint(.black)
            }
            .sheet(isPresented: $addPlayerSheetPresent) {
                PlayerSelectionView()
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
