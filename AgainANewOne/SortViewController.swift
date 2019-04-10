//
//  SortViewController.swift
//  AgainANewOne
//
//  Created by Davide on 09/04/2019.
//  Copyright © 2019 David. All rights reserved.
//

import UIKit

//protocol Selection {
//    func selectionChoice() -> String
//}

class SortViewController: UIViewController {
    
    
//    func selectionChoice() -> String {
//        return "hiToLow"
//    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
  
    
//
//    @IBAction func PassDetails(_ sender: Any) {
//        ViewController = "hiToLow"
//        self.performSegue(withIdentifier: "backToList", sender: nil)
//        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let destinationVC = segue.destination as! ViewController
        destinationVC.kindOfSort = "lowToHigh"
    }
    
    
    func pepareHighToLow(for segue: UIStoryboardSegue, sender: Any?){
        let destinationVC = segue.destination as! ViewController
        destinationVC.kindOfSort = "HighToLow"
    
        
    }
    
    
    
    
}
