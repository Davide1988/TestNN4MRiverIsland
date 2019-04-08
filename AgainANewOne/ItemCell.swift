//
//  ItemCell.swift
//  AgainANewOne
//
//  Created by David on 03/03/2019.
//  Copyright © 2019 David. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {

    @IBOutlet weak var PriceLable: UILabel!
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var Picture: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
     
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
}
