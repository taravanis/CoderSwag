//
//  CatagoryCell.swift
//  CoderSwag
//
//  Created by Theophilos Aravanis on 11/5/17.
//  Copyright © 2017 Theophilos Aravanis. All rights reserved.
//

import UIKit

class CatagoryCell: UITableViewCell {

    @IBOutlet weak var catagoryImage: UIImageView!
    @IBOutlet weak var catagoryTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
