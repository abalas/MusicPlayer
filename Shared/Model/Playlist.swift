//
//  Playlist.swift
//  MusicPlayer
//
//  Created by Andrej on 08.09.2022..
//

import Foundation

struct Playlist: Identifiable, TitledItem {
    
    let id: String = UUID().uuidString
    var title: String
    var songs: [Song]
    
}
