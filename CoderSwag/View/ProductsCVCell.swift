//
//  ProductsCVCell.swift
//  CoderSwag
//
//  Created by Ravi Inder Manshahia on 12/02/19.
//  Copyright © 2019 Ravi Inder Manshahia. All rights reserved.
//

import UIKit

class ProductsCVCell: UICollectionViewCell {
    @IBOutlet weak var productImage : UIImageView!
    @IBOutlet weak var productName : UILabel!
    @IBOutlet weak var productPrice : UILabel!
    
    
    func updateView(forProduct product: Product)
    {
        productImage.image = UIImage(named:product.productImage)
        productName.text = product.productName
        productPrice.text = product.productPrice
    }
}
