//
//  IsEmptyModifyer.swift
//  game
//
//  Created by Florian Müller on 20.12.22.
//

import Foundation
import SwiftUI

struct EmptyModifier: ViewModifier {

    let isEmpty: Bool

    func body(content: Content) -> some View {
        Group {
            if isEmpty {
                VStack {
                    Text("No Players")
                        .font(.largeTitle)
                    Image("void_img")
                      .resizable()
                      .scaledToFit()
                      .aspectRatio(contentMode: .fit)
                      .padding(.horizontal, 100)
                }
                
            } else {
                content
            }
        }
    }
}
