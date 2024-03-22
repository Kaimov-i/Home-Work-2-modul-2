//
//  ViewController.swift
//  Home Work 2 modul 2
//
//  Created by Ilman on 21.03.2024.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet var traficliteColorRed: UIView!
    @IBOutlet var traficliteColorYellow: UIView!
    @IBOutlet var traficliteColorGreen: UIView!
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        traficliteColorRed.layer.cornerRadius = 75
        traficliteColorYellow.layer.cornerRadius = 75
        traficliteColorGreen.layer.cornerRadius = 75
        traficliteColorRed.alpha = 0.3
        traficliteColorGreen.alpha = 0.3
        traficliteColorYellow.alpha = 0.3
        startButton.layer.cornerRadius = 10
        
    }
    

    @IBAction func startButtonDidTapped() {
        startButton.setTitle("NEXT", for: .normal)
        if traficliteColorRed.alpha < 1 && traficliteColorYellow.alpha < 1 {
            traficliteColorRed.alpha = 1
            traficliteColorGreen.alpha = 0.3
        }else if traficliteColorRed.alpha == 1 {
            traficliteColorRed.alpha = 0.3
            traficliteColorYellow.alpha = 1
        }else if traficliteColorYellow.alpha == 1 {
            traficliteColorYellow.alpha = 0.3
            traficliteColorGreen.alpha = 1
        }
    }
    
}

