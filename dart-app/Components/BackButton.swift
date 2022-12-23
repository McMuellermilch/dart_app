//
//  BackButton.swift
//  dart-app
//
//  Created by Florian Müller on 23.12.22.
//

import SwiftUI

struct BackButton: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 1, style: .continuous)
                .fill(Color("DevilBlue"))
            Image(systemName: "delete.backward")
                .foregroundColor(.black)
        }
        .frame(height: 45)
    }
}

struct BackButton_Previews: PreviewProvider {
    static var previews: some View {
        BackButton()
    }
}
