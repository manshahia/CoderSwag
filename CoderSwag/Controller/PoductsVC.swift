//
//  PoductsVC.swift
//  CoderSwag
//
//  Created by Ravi Inder Manshahia on 12/02/19.
//  Copyright © 2019 Ravi Inder Manshahia. All rights reserved.
//

import UIKit

class PoductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource
{
    @IBOutlet weak var collectionView : UICollectionView!
    private(set) var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self

    }

    func initProducts(forCategory category:String)
    {
        products =  CategoryService.instance.getProducts(for: category)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier:"cell", for: indexPath) as? ProductsCVCell
        {
            let product = products[indexPath.row]
            cell.updateView(forProduct: product)
            return cell
        }
        else
        {
            return ProductsCVCell()
            
        }
}
}
