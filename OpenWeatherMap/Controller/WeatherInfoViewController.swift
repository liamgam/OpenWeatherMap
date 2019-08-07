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
    var cityName: String?
    
    @IBOutlet weak var cityNameLabel: UILabel!

    @IBOutlet weak var minTempLabel: UILabel!
    @IBOutlet weak var maxTempLabel: UILabel!
    @IBOutlet weak var weatherDescLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setWeatherInfo()

    }
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func setWeatherInfo() {
        if let weather = data {
            minTempLabel.text = String(weather.main.minTemperature)
            maxTempLabel.text = String(weather.main.maxTemperature)
            weatherDescLabel.text = weather.weather[0].main
            cityNameLabel.text = cityName!
        }
    }
}
