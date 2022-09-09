//
//  SongsView.swift
//  MusicPlayer
//
//  Created by Andrej on 08.09.2022..
//

import SwiftUI

struct SongsView: View {
    @EnvironmentObject var player: Player
    
    var body: some View {
        NavigationView(content:  {
            SongsListView(songs: player.songs)
            .navigationTitle("Songs")
        })
    }
}

struct SongsView_Previews: PreviewProvider {
    static var previews: some View {
        SongsView()
    }
}
