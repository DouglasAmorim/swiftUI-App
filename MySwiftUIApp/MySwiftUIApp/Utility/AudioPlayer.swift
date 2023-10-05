//
//  AudioPlayer.swift
//  MySwiftUIApp
//
//  Created by Douglas Amorim on 05/10/23.
//

import Foundation
import AVFoundation

class AudioPlayer {
    static let shared = AudioPlayer()
    
    var audioPlayer: AVAudioPlayer?
    
    func playSound(sound: String, type: String) {
        if let path = Bundle.main.path(forResource: sound, ofType: type) {
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                audioPlayer?.play()
            } catch {
                print("Could not play the sound file.")
            }
        }
    }
}
