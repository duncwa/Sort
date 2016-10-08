//
//  ItemViewCell.swift
//  Sort
//
//  Created by Duncan Wallace on 2/3/16.
//  Copyright © 2016 Duncan Wallace. All rights reserved.
//

import UIKit

class ItemViewCell: UITableViewCell {
    
    // MARK: Properties
    
    @IBOutlet weak var itemLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
