//
//  ViewController.swift
//  TrafficLight
//
//  Created by Vovo on 19.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var orangeLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var startButton: UIButton!
    
       
    override func viewDidLoad() {
        super.viewDidLoad()
        changePropertiesOfLight()
        startButton.layer.cornerRadius = 20
        
        
    }
    
   private func changePropertiesOfLight() {
        redLight.alpha = 0.3
        orangeLight.alpha = 0.3
        greenLight.alpha = 0.3
        
        redLight.layer.cornerRadius = 60
        orangeLight.layer.cornerRadius = 60
        greenLight.layer.cornerRadius = 60
        
    }
    
    @IBAction func startButtonDidTapped() {
        startButton.setTitle("Next", for: .normal)
              
        
    }
}

 
