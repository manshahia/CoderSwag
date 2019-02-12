//
//  Category.swift
//  CoderSwag
//
//  Created by Ravi Inder Manshahia on 12/02/19.
//  Copyright © 2019 Ravi Inder Manshahia. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var categoryName : String
    private(set) public var imageName : String
    
    init(categoryName : String, imageName : String)
    {
        self.categoryName = categoryName
        self.imageName = imageName
    }
}
