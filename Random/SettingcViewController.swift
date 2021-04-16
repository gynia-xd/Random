//
//  SettingcViewController.swift
//  Random
//
//  Created by Пётр  on 16.04.2021.
//

import UIKit

class SettingcViewController: UIViewController {

    @IBOutlet var minimumValueTF: UITextField!
    @IBOutlet var maximumValueTF: UITextField!
    
    var minimumValue: String!
    var maximumValue: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        minimumValueTF.text = minimumValue
        maximumValueTF.text = maximumValue
    }
    

    @IBAction func cancelActoin() {
        dismiss(animated: true)
    }
    
}
