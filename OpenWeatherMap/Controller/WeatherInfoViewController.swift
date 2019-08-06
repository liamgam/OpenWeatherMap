//
//  WeatherInfoViewController.swift
//  OpenWeatherMap
//
//  Created by Rinni Swift on 8/6/19.
//  Copyright © 2019 Rinni Swift. All rights reserved.
//

import UIKit

class WeatherInfoViewController: UIViewController {
    
    var data: Weather?

    @IBOutlet weak var minTempLabel: UILabel!
    @IBOutlet weak var maxTempLabel: UILabel!
    @IBOutlet weak var weatherDescLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
