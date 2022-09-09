//
//  PlaylistsView.swift
//  MusicPlayer (iOS)
//
//  Created by Andrej on 08.09.2022..
//

import SwiftUI

struct PlaylistsView: View {
    @EnvironmentObject var player: Player
    
    var body: some View {
        NavigationView {
            VStack {
                
                List(player.playlists) { playlist in
                    
                    NavigationLink {
                        SongsListView(songs: playlist.songs)
                    } label: {
                        ListRow(item: playlist)
                    }
                }
                Spacer()
                PlayerView()
            }.navigationTitle("Playlists")
        }
    }
}

struct PlaylistsView_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistsView()
    }
}
