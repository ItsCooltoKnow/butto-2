//
//  ViewController.swift
//  butto
//
//  Created by Laboratorio UNAM-Apple 14 on 13/11/18.
//  Copyright © 2018 Laboratorio UNAM-Apple 14. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
     var audioPlayer = AVAudioPlayer ()
    
override func viewDidLoad() {
        super.viewDidLoad()
    
    
   }
    @IBAction func color(_ sender: UIButton) {
        if self.view.backgroundColor == UIColor.blue{
            self.view.backgroundColor = UIColor.purple

        }else{
            self.view.backgroundColor = UIColor.blue
        }
       
        
    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func blue1(_ sender: UIButton) {
        // Set the sound file name & extension
        let alertSound = URL(fileURLWithPath: Bundle.main.path(forResource: "radio-tune-zwoop-down", ofType: "wav")!)
        
        do {
            // Preperation
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
        } catch _ {
        }
        do {
            try AVAudioSession.sharedInstance().setActive(true)
        } catch _ {
        }
        
        // Play the sound
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: alertSound)
        } catch _{
        }
        
        audioPlayer.prepareToPlay()
        audioPlayer.play()
        
    }
    
}

