//
//  SongsListView.swift
//  MusicPlayer
//
//  Created by Andrej on 08.09.2022..
//

import SwiftUI

struct SongsListView: View {
    
    var songs: [Song]
    
    var body: some View {
        VStack {
            List(songs) { song in
                ListRow(item: song)
            }
            Spacer()
            PlayerView()
        }
    }
}
