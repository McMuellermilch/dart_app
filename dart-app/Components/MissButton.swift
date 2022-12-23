//
//  MissButton.swift
//  dart-app
//
//  Created by Florian Müller on 23.12.22.
//

import SwiftUI

struct MissButton: View {
    var body: some View {
        Button(action: {
            
        }, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 1, style: .continuous)
                    .fill(Color("Netflix"))
                Image(systemName: "nosign")
                    .foregroundColor(.white)
            }
            .frame(height: 50)
        })
        
    }
}

struct MissButton_Previews: PreviewProvider {
    static var previews: some View {
        MissButton()
    }
}
