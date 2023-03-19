//
//  ViewController.swift
//  TrafficLight
//
//  Created by Vovo on 19.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var startButton: UIButton!
  
    private let alphaChannelBright: CGFloat = 1.0
    private let alphaChannelDim: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changePropertiesOfLight()
        startButton.layer.cornerRadius = 20
    }
    
   private func changePropertiesOfLight() {
        redLight.alpha = alphaChannelDim
        yellowLight.alpha = alphaChannelDim
        greenLight.alpha = alphaChannelDim
        
        redLight.layer.cornerRadius = 60
        yellowLight.layer.cornerRadius = 60
        greenLight.layer.cornerRadius = 60
        
    }
    
    @IBAction func startButtonDidTapped() {
        startButton.setTitle("Next", for: .normal)
       
        if redLight.alpha == yellowLight.alpha &&
            yellowLight.alpha == greenLight.alpha {
            redLight.alpha = alphaChannelBright
        } else if redLight.alpha == alphaChannelBright &&
            yellowLight.alpha == greenLight.alpha {
            yellowLight.alpha = alphaChannelBright
            redLight.alpha = alphaChannelDim
        } else if yellowLight.alpha == alphaChannelBright &&
            redLight.alpha == greenLight.alpha {
            greenLight.alpha = alphaChannelBright
            yellowLight.alpha = alphaChannelDim
        } else if greenLight.alpha == alphaChannelBright &&
            redLight.alpha == yellowLight.alpha {
            redLight.alpha = alphaChannelBright
            greenLight.alpha = alphaChannelDim
        }
    }
}

 
