//
//  UISearchBar+Extensions.swift
//  OpenWeatherMap
//
//  Created by Rinni Swift on 8/2/19.
//  Copyright © 2019 Rinni Swift. All rights reserved.
//

import Foundation
import UIKit

extension UISearchBar {
    
    func configureSearchbar() {
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.lightGray.cgColor
        self.layer.cornerRadius = 8
        self.barTintColor = UIColor(red: 255, green: 246, blue: 241, alpha: 1)
        self.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        let textField: UITextField = self.value(forKey: "_searchField") as! UITextField
        textField.textColor = #colorLiteral(red: 0.231372549, green: 0.231372549, blue: 0.231372549, alpha: 1)
        textField.backgroundColor = UIColor.clear
        textField.font = UIFont(name: "Avenir Medium", size: 15)
    }
    
}
