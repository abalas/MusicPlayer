//
//  MusicPlayerApp.swift
//  Shared
//
//  Created by Andrej on 08.09.2022..
//

import SwiftUI

@main
struct MusicPlayerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Player())
        }
    }
}
