//
//  File.swift
//  CoderSwag
//
//  Created by Ravi Inder Manshahia on 12/02/19.
//  Copyright © 2019 Ravi Inder Manshahia. All rights reserved.
//

import Foundation

struct Product {
    
    private(set) public var productImage : String
    private(set) public var productName : String
    private(set) public var productPrice : String
    
    init(productImage image: String, productName name : String, productPrice  price : String )
    {
        productImage = image
        productName = name
        productPrice = price
    }
}
