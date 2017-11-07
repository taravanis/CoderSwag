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
    
 
    func updateViews(category:Category) {
        catagoryImage.image = UIImage(named: category.imageName)
        catagoryTitle.text = category.title
    }

}
