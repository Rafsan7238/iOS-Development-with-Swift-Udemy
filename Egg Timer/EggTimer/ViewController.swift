//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let times : [String : Float] = ["Soft" : 5, "Medium" : 7, "Hard" : 12]
    var time : Float = 0
    var timer = Timer()
    var totalTime : Float = 0
    var player : AVAudioPlayer!
    
    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        
        let hardness = sender.currentTitle!
        
        time = times[hardness]!
        totalTime = time
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
    }
    
    @objc func updateTime() {
        
        if time >= 0 {
            print(time)
            progressBar.progress = (totalTime - time) / totalTime
            time -= 1
        }
        
        else {
            timer.invalidate()
            labelText.text = "DONE!"
            
            let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                self.labelText.text = "How do you like your eggs?"
                self.progressBar.progress = 0
            }
        }
        
    }
    
    
}
