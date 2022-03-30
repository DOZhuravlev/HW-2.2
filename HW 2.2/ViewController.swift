//
//  ViewController.swift
//  HW 2.2
//
//  Created by Zdrenko Zigich on 26.03.2022.
//

import UIKit

enum CurrentColor: String {
    case red
    case yellow
    case green
}

class ViewController: UIViewController {

    @IBOutlet weak var redColorView: UIView!
    @IBOutlet weak var yellowColorView: UIView!
    @IBOutlet weak var greenColorView: UIView!
    private var currentColor = CurrentColor.red

    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redColorView.alpha = 0.3
        yellowColorView.alpha = 0.3
        greenColorView.alpha = 0.3
    }
    
    override func viewDidLayoutSubviews() {
        redColorView.layer.cornerRadius = redColorView.frame.width / 2
        yellowColorView.layer.cornerRadius = yellowColorView.frame.width / 2
        greenColorView.layer.cornerRadius = greenColorView.frame.width / 2
        startButton.layer.cornerRadius = 10
    }

    @IBAction func startButtonPressed() {
        startButton.setTitle("NEXT", for: .normal)
        
        switch currentColor {
        case CurrentColor.red:
            greenColorView.alpha = 0.3
            redColorView.alpha = 1
            currentColor = .yellow
        case CurrentColor.yellow:
            redColorView.alpha = 0.3
            yellowColorView.alpha = 1
            currentColor = .green
        case CurrentColor.green:
            yellowColorView.alpha = 0.3
            greenColorView.alpha = 1
            currentColor = .red
            break
        }
    }
}

