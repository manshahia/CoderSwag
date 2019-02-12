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
    
    
    //CollectionView Data
    
    private let hats = [
        Product(productImage: "hat01.jpg", productName: "Hat", productPrice: "$15"),
        Product(productImage: "hat02.jpg", productName: "Hat", productPrice: "$15"),
        Product(productImage: "hat03.jpg", productName: "Hat", productPrice: "$15"),
        Product(productImage: "hat04.jpg", productName: "Hat", productPrice: "$15")
    ]
    
    private let hoodies = [
        Product(productImage: "hoodie01.jpg", productName: "Hoodie", productPrice: "$15"),
        Product(productImage: "hoodie02.jpg", productName: "Hoodie", productPrice: "$15"),
        Product(productImage: "hoodie03.jpg", productName: "Hoodie", productPrice: "$15"),
        Product(productImage: "hoodie04.jpg", productName: "Hoodie", productPrice: "$15")
    ]
    
    private let shirts = [
        Product(productImage: "shirt01.jpg", productName: "Shirt", productPrice: "$15"),
        Product(productImage: "shirt02.jpg", productName: "Shirt", productPrice: "$15"),
        Product(productImage: "shirt03.jpg", productName: "Shirt", productPrice: "$15"),
        Product(productImage: "shirt04.jpg", productName: "Shirt", productPrice: "$15"),
        Product(productImage: "shirt05.jpg", productName: "Shirt", productPrice: "$15"),
    ]
    
    func  getHats() -> [Product] {
        return hats
    }
    
    func  getSHirts() -> [Product]
    {
        return shirts
    }
    
    func  getHoodies() -> [Product]
    {
        return hoodies
    }
    
    //Public
    
    //for TableView
    func getCategories() -> [Category]
    {
        return categories
    }
    
    //for collection view
    
    func getProducts(for category: String) -> [Product]
    {
        switch category {
        case "SHIRTS":
            return getSHirts()
        case "HOODIES":
            return getHoodies()
        case "HATS":
            return getHats()
        default:
            return getSHirts()
        }
    }
    
}














