//
//  ViewController.swift
//  Xylophone
//
//  Created by Barry on 4/5/20.
//  Copyright © 2020 Barry. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        
        
        playSound(soundName: sender.currentTitle!);
    }
    
    func playSound(soundName : String) {
        let url = Bundle.main.url(forResource: "Sounds/\(soundName)", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}

