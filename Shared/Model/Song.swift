//
//  Song.swift
//  MusicPlayer
//
//  Created by Andrej on 08.09.2022..
//

import Foundation

struct Song: Identifiable, Equatable, TitledItem {
    
    let id: String = UUID().uuidString
    var title: String
    var url: URL
    
}
