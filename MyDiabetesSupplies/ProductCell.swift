//
//  ProductCell.swift
//  MyDiabetesSupplies
//
//  Created by Luca Missaglia on 4/13/20.
//  Copyright © 2020 Luca Missaglia. All rights reserved.
//

import UIKit

class ProductCell: UITableViewCell {
    @IBOutlet var serialNumberLabel: UILabel!
    @IBOutlet var expirationDateLabel: UILabel!
    @IBOutlet var binLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
