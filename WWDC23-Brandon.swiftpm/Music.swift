//
//  Music.swift
//  WWDC23-Brandon
//
//  Created by Brandon Nicolas Marlim on 12/04/23.
//

import Foundation
import AVFoundation

class MusicPlayer {
    
    static let shared = MusicPlayer()
    var audioPlayer: AVAudioPlayer?
    
    func startBackgroundMusic() {
        if let bundle = Bundle.main.path(forResource: "Sailing - Telecasted", ofType: "mp3") {
            let backgroundMusic = NSURL(fileURLWithPath:bundle)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: backgroundMusic as URL)
                guard let audioPlayer = audioPlayer else { return }
                audioPlayer.numberOfLoops = -1
                audioPlayer.prepareToPlay()
                audioPlayer.play()
//                audioPlayer.pause()
            }
            catch {
                print(error)
            }
            }
        }
    }
