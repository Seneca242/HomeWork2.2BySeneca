//
//  ViewController.swift
//  HomeWork2.2BySeneca
//
//  Created by Дмитрий Дмитрий on 10.07.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mainView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        mainView.layer.cornerRadius = 15
        
        redLabel.text = "Red"
        greenLabel.text = "Green"
        blueLabel.text = "Blue"
        
        redLabel.font = UIFont(name: "ArialNarrow-Bold", size: 12)
        greenLabel.font = UIFont(name: "ArialNarrow-Bold", size: 12)
        blueLabel.font = UIFont(name: "ArialNarrow-Bold", size: 12)
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
        
        redSlider.thumbTintColor = .black
        greenSlider.thumbTintColor = .black
        blueSlider.thumbTintColor = .black
        
        assignMainViewColor()
    }

    @IBAction func allSlidersAction(_ sender: UISlider) {
        assignMainViewColor()
        
        switch sender {
        case redSlider: redValueLabel.text = getValueFromSlider(from: redSlider)
        case greenSlider: greenValueLabel.text = getValueFromSlider(from: greenSlider)
        default:
            blueValueLabel.text = getValueFromSlider(from: blueSlider)
        }
    }
    
    private func assignMainViewColor() {
        mainView.backgroundColor = UIColor(
            displayP3Red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }
    
    private func getValueFromSlider(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}

