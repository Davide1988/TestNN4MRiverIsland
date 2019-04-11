//
//  SortViewController.swift
//  AgainANewOne
//
//  Created by Davide on 09/04/2019.
//  Copyright © 2019 David. All rights reserved.
//

import UIKit



class SortViewController: UIViewController {
    


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
  
    
    //this works fine
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let destinationVC = segue.destination as! ViewController
        destinationVC.kindOfSort = "lowToHigh"
    }
    
    
    
//
//    func prepare(for segue: UIStoryboardSegue, sender: Any?){
//        let destinationVC = segue.destination as! ViewController
//        destinationVC.kindOfSort = "highToLow"
//
//
//    }
    
    
    
    
}
