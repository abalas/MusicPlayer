//
//  ListRow.swift
//  MusicPlayer (iOS)
//
//  Created by Andrej on 08.09.2022..
//

import SwiftUI

protocol TitledItem {
    
    var title: String { get }
}

struct ListRow<T: TitledItem>: View {
    @EnvironmentObject var player: Player
    var item: T
    
    var body: some View {
        HStack {
            Button {
                if let song = item as? Song {
                    player.currentSong = song
                    player.play()
                }
            } label: {
                Text(item.title)
            }
            Spacer()
        }
    }
}
