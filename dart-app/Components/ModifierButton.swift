//
//  ModifierButton.swift
//  dart-app
//
//  Created by Florian Müller on 23.12.22.
//

import SwiftUI

struct ModifierButton: View {
    var label: String
    var modifierActive: Bool
    @Binding var modifierBool: Bool
    
    var body: some View {
        Button(action: {modifierBool.toggle()}, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 1, style: .continuous)
                    .fill(modifierActive ? Color("Mandarin") : Color("Mustard"))
                Image(systemName: "\(label).circle")
                    .foregroundColor(.primary)
            }
            .frame(height: 45)
        })
        
    }
}

//struct ModifierButton_Previews: PreviewProvider {
//    static var previews: some View {
//        ModifierButton(label: "TD", modifierActive: false)
//    }
//}
