//
//  dart_appApp.swift
//  dart-app
//
//  Created by Florian Müller on 17.07.22.
//

import SwiftUI

@main
struct dart_appApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(GameStateModel())
        }
    }
}
