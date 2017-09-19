//
//  ViewController.swift
//  whitworthfm
//
//  Created by Michael Lindahl on 9/17/17.
//  Copyright © 2017 Whitworth ASWU. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {
    var streamPlayer: AVPlayer = {
        let player = AVPlayer(url: URL(string: "http://majestic.wavestreamer.com:7985/live.mp3")!)

        return player
    }()
    
    @IBOutlet weak var playPauseButton: UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playPauseAction(sender: UIButton) {
        if streamPlayer.timeControlStatus == .playing {
            streamPlayer.pause()
            playPauseButton?.setTitle("Play", for: .normal)
        } else {
            streamPlayer.play()
            playPauseButton?.setTitle("Pause", for: .normal)
        }
    }
}

