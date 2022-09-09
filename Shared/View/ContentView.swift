//
//  ContentView.swift
//  Shared
//
//  Created by Andrej on 08.09.2022..
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            SongsView()
                .tabItem {
                    Text("Songs")
                }
            PlaylistsView()
                .tabItem {
                    Text("Playlists")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
