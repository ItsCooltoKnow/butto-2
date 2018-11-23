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


}

