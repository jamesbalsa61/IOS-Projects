//
//  ViewController.swift
//  Swift_Timer
//
//  Created by Michael Balsa on 5/2/22.
//

import UIKit

class ViewController: UIViewController {
    var timer = Timer()
    var programTime = 240
    @objc func decreaseTime() {
        if programTime > 0 {
        programTime -= 1
        label_Timer.text = String(programTime)
        } else {
            timer.invalidate()
        }
    }
    @IBOutlet var label_Timer: UILabel!
    
    @IBAction func play(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseTime), userInfo: nil, repeats: true)
    }
    @IBAction func pause(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func Increase(_ sender: Any) {
        programTime += 5
        label_Timer.text = String(programTime)
    }
    
    @IBAction func decrease(_ sender: Any) {
        programTime -= 5
        label_Timer.text = String(programTime)
        
        
    }
    
    }

