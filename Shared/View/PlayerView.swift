//
//  PlayerView.swift
//  MusicPlayer (iOS)
//
//  Created by Andrej on 08.09.2022..
//

import SwiftUI

struct PlayerView: View {
    
    @EnvironmentObject var player: Player
    
    var body: some View {
        VStack {
            HStack {
                HStack {
                    Spacer()
                    
                    // Previous button
                    Button {
                        player.playPrevious()
                    } label: {
                        Image(systemName: "backward.end.fill")
                            .resizable()
                            .frame(width: 20, height: 20)
                    }.frame(width: 40, height: 40)
                    
                    // Play/Pause button
                    Button {
                        _ = player.isPlaying ? player.pause() : player.play()
                    } label: {
                        
                        let imageName = player.isPlaying ? "pause.fill" : "play.fill"
                        
                        Image(systemName: imageName)
                            .resizable()
                            .frame(width: 30, height: 30)
                        
                    }.frame(width: 40, height: 40)
                    
                    // Next button
                    Button {
                        player.playNext()
                    } label: {
                        Image(systemName: "forward.end.fill")
                            .resizable()
                            .frame(width: 20, height: 20)
                    }.frame(width: 40, height: 40)
                    Spacer()
                }.offset(x: player.currentSong != nil ? 20 : 0)
                
                // Favorite button
                if let currentSong = player.currentSong {
                    Button {
                        player.toggleFavorite(currentSong)
                    } label: {
                        let imageName = player.isFavorite(currentSong) ? "heart.fill" : "heart"
                        
                        Image(systemName: imageName)
                            .resizable()
                            .frame(width: 20, height: 20)
                        
                    }.frame(width: 40, height: 40)
                }
            }
            
            // Song title
            Text(player.currentSong?.title ?? "--------")
            
        }.padding(20)
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
