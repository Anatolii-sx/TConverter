//
//  ViewController.swift
//  TConverter
//
//  Created by Анатолий Миронов on 20.06.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celciusLabel: UILabel!
    @IBOutlet weak var farengateLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        // дидсет выполняется при загрузке приложения?
        didSet {
            slider.value = 0
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.tintColor = .blue
            slider.thumbTintColor = .white
        }
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        let celcius = Int(round(sender.value))
        celciusLabel.text = "\(celcius) ºC"
        
        let farengate = Int(round((sender.value * 9 / 5) + 32))
        farengateLabel.text = "\(farengate) ºF"
    }
    
}

