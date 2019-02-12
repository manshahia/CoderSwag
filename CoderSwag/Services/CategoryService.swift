//
//  CategoryService.swift
//  CoderSwag
//
//  Created by Ravi Inder Manshahia on 12/02/19.
//  Copyright © 2019 Ravi Inder Manshahia. All rights reserved.
//

import Foundation

class CategoryService {
    static let instance = CategoryService()
    
    private let categories = [
        Category(categoryName: "DIGITAL",imageName: "digital.png"),
        Category(categoryName: "SHIRTS",imageName: "shirts.png"),
        Category(categoryName: "HOODIES",imageName: "hoodies.png"),
        Category(categoryName: "HATS",imageName: "hats.png"),
    ]
    
    func getCategories() -> [Category]
    {
        return categories
    }
}
