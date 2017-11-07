//
//  Category.swift
//  CoderSwag
//
//  Created by Theophilos Aravanis on 11/7/17.
//  Copyright © 2017 Theophilos Aravanis. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String!
    private(set) public var imageName: String!
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
