//
//  ViewController.swift
//  HealthKit-Challenge
//
//  Created by Giovanni Severo on 17/09/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        HealthManager.shared.requestAuthorization()
    }
}

