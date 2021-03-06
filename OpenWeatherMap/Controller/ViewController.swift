//
//  ViewController.swift
//  OpenWeatherMap
//
//  Created by Rinni Swift on 8/2/19.
//  Copyright © 2019 Rinni Swift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var searchbar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchbar.configureSearchbar()
        searchbar.delegate = self

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        searchbar.resignFirstResponder()
    }
}

extension ViewController: UISearchBarDelegate {
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        NetworkService.getWeatherData(router: .getWeatherInfo(city: searchbar.text!)) { (result: Result<Weather, Error>) in
            switch result {
            case .success(let res):
                let weatherInfoViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "weatherInfoViewController") as! WeatherInfoViewController
                weatherInfoViewController.data = res
                weatherInfoViewController.cityName = searchBar.text!
                self.present(weatherInfoViewController, animated: true, completion: nil)
                
            case .failure(let err):
                print("failure \(err)")
            }
        }
    }
    
}

