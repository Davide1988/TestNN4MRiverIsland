//
//  ViewController.swift
//  AgainANewOne
//
//  Created by David on 03/03/2019.
//  Copyright © 2019 David. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    
    final let url = URL(string: "https://static.ristack.nn4maws.net/category/2506/products.json")
    
    private var ArrayProducts = [Item]()
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        downloadJson()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    
    
    
    func downloadJson() {
        guard let downloadURL = url else {return}
        
        URLSession.shared.dataTask(with: downloadURL)   { (data, urlResponse, error) in
            guard let data = data, error == nil, urlResponse != nil else {
                return
            }
            do
            {
                let decoder = JSONDecoder()
                let products = try decoder.decode(Products.self , from: data)
                for item in products.Products {
                    self.ArrayProducts.append(item)
                    self.sortByPrice()
                }
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }catch {
                print("error 404")
            }
            
        }.resume()
    }
    
    func sortByPrice() {
//        var NewArray = ArrayProducts.map({ (object.cost) -> Int in
//            return object
//        })
        ArrayProducts.sort{$0.price() < $1.price()}
        print(ArrayProducts[0].cost)
    }
    
//    func toInt(){
//        for object in ArrayProducts{
//            object.cost = Int(object.cost)
//        }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
    return 200
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ArrayProducts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Item") as? ItemCell else {
            return UITableViewCell()
        }
        
        cell.NameLabel.text = ArrayProducts[indexPath.row].name
        cell.PriceLable.text = "Price: £ \(ArrayProducts[indexPath.row].cost).00"
        
        if
            
            let imageURL = URL(string: ArrayProducts[indexPath.row].altImage){
            DispatchQueue.global().async {
                let data = try? Data(contentsOf: imageURL)
                if let data = data{
                    let image = UIImage(data: data)
                    DispatchQueue.main.async {
                        cell.Picture.image = image
                        let detail = DetailViewController()
                        detail.image = image!
                    }
                }
            }
        }
        return cell
    }
}
//    func tableView(_ tableView: UITableView, didSelectItemAt indexPath: IndexPath){
//
//        let mainStoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
//
//        let desVC = mainStoryboard.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
//
//            let detail = DetailViewController()
//            desVC.image = detail.image
//
//            self.navigationController?.pushViewController(desVC, animated: true)
//
//    }
    




