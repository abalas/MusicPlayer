//
//  Player.swift
//  MusicPlayer (iOS)
//
//  Created by Andrej on 08.09.2022..
//

import Foundation
import AVFoundation

class Player: ObservableObject {
    
    @Published var songs: [Song] = [
        Song(title: "Song 1", url: URL(string: "https://file-examples-com.github.io/uploads/2017/11/file_example_MP3_5MG.mp3")!),
        Song(title: "Song 2", url: URL(string: "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-13.mp3")!),
        Song(title: "Song 3", url: URL(string: "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-16.mp3")!),
    ]
    
    @Published var playlists: [Playlist] = [
        Playlist(title: "Favourites", songs: [])
    ]
    
    @Published var isPlaying: Bool = false
    @Published var currentSong: Song? {
        didSet {
            if let song = currentSong {
                let item = AVPlayerItem(url: song.url)
                audioPlayer.replaceCurrentItem(with: item)
            }
        }
    }
    
    let audioPlayer = AVPlayer()
    
    func play() {
        if let _ = currentSong {
            audioPlayer.play()
            isPlaying = true
        }
    }
    
    func pause() {
        audioPlayer.pause()
        isPlaying = false
    }
    
    func playNext() {
        
        if let currentSong = currentSong,
           let currentIndex = songs.firstIndex(of: currentSong),
           currentIndex < songs.count - 1 {
            
            self.currentSong = songs[currentIndex+1]
        } else {
            self.currentSong = songs[0]
        }
    }
    
    func playPrevious() {
        if let currentSong = currentSong,
           let currentIndex = songs.firstIndex(of: currentSong),
           currentIndex > 0 {
            
            self.currentSong = songs[currentIndex-1]
        } else {
            self.currentSong = songs[songs.count-1]
        }
    }
    
    func isFavorite(_ song: Song) -> Bool {
        return playlists[0].songs.contains(where: {
            $0 == song
        })
    }
    
    func toggleFavorite(_ song: Song) {
        if isFavorite(song) {
            playlists[0].songs.removeAll(where: {
                $0 == song
            })
        } else {
            playlists[0].songs.append(song)
        }
    }
}
