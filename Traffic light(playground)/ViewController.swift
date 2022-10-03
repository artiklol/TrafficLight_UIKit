//
//  ViewController.swift
//  Traffic light(playground)
//
//  Created by Artem Sulzhenko on 03.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.layer.cornerRadius = redLight.layer.bounds.width / 2
        redLight.alpha = 0.3
        yellowLight.layer.cornerRadius = yellowLight.layer.bounds.width / 2
        yellowLight.alpha = 0.3
        greenLight.layer.cornerRadius = greenLight.layer.bounds.width / 2
        greenLight.alpha = 0.3
        startButton.layer.cornerRadius = 10
        stopButton.layer.cornerRadius = 10
        stopButton.isHidden = true
    }
    
    var num = 0
    
    @IBAction func startButtonPressed() {
      
        stopButton.isHidden = false
        
        if num == 0 {
            redLight.alpha = 1
            greenLight.alpha = 0.3
            num += 1
            startButton.setTitle("NEXT", for: .normal)
        } else if num == 1 {
            redLight.alpha = 0.3
            yellowLight.alpha = 1
            num += 1
            startButton.setTitle("NEXT", for: .normal)
        } else {
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
            num = 0
            startButton.setTitle("NEXT", for: .normal)

        }
            

    }
    
    @IBAction func stopButtonPressed() {
        viewDidLoad()
        num = 0
        startButton.setTitle("START", for: .normal)
    }
    
}

