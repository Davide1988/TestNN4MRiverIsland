//
//  Alert.swift
//  AgainANewOne
//
//  Created by David on 31/03/2019.
//  Copyright © 2019 David. All rights reserved.
//

import UIKit

class Alert {
    
    func alert(message: String) -> UIAlertController{
        
        let alert = UIAlertController(title:nil, message: message, preferredStyle: .alert)
        
        return alert
    }
}
