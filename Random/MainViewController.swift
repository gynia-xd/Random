//
//  ViewController.swift
//  Random
//
//  Created by Пётр  on 16.04.2021.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet var minimunValueLabel: UILabel!
    @IBOutlet var maximumValueLabel: UILabel!
    @IBOutlet var randomValueLabel: UILabel!
    @IBOutlet var getRandomNumberButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getRandomNumberButton.layer.cornerRadius = 10
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingcViewController
        else{
            return
        }
        settingsVC.minimumValue = minimunValueLabel.text
        settingsVC.maximumValue = maximumValueLabel.text
    }

    @IBAction func getRandomNumberButtonTapped() {
        let minimumNumber = Int(String(minimunValueLabel.text ??  "")) ?? 0
        let maximumNumber = Int(String(maximumValueLabel.text ??  "")) ?? 100
        
        randomValueLabel.text = String(Int.random(in: minimumNumber...maximumNumber))
    }
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let settingsVC = segue.source as? SettingcViewController
        else{
            return
        }
        minimunValueLabel.text = settingsVC.minimumValueTF.text
        maximumValueLabel.text = settingsVC.maximumValueTF.text
    }
}

