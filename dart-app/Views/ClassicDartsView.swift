//
//  ClassicDartsView.swift
//  dart-app
//
//  Created by Florian Müller on 21.12.22.
//

import SwiftUI

struct ClassicDartsView: View {
    @Environment(\.dismiss) var dismiss
    @State var showSettingsSheet: Bool = false
    @State var showAlert: Bool = false
    
    var body: some View {
        VStack {
            
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {showAlert = true}) {
                    Image(systemName: "arrow.backward.circle")
                        .padding(.horizontal)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {showSettingsSheet = true}) {
                    Image(systemName: "slider.horizontal.3")
                        .padding(.horizontal)
                }
            }
            
        }
        .tint(.black)
        .actionSheet(isPresented: $showAlert) {
            ActionSheet(title: Text("End Game?"),
                        message: Text("Are you sure you want to leave the current game?"),
                        buttons: [
                            .destructive(Text("End Game"), action: {
                                dismiss()
                            }),
                            .cancel()
                        ])
        }
        .sheet(isPresented: $showSettingsSheet) {
            Text("Settings")
                .font(.title)
        }
    }
}

struct ClassicDartsView_Previews: PreviewProvider {
    static var previews: some View {
        ClassicDartsView()
    }
}
