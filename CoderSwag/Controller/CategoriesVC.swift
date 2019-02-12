//
//  ViewController.swift
//  CoderSwag
//
//  Created by Ravi Inder Manshahia on 12/02/19.
//  Copyright © 2019 Ravi Inder Manshahia. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableview : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableview.delegate = self
        tableview.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CategoryService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? CategoryCell
        {
            let category = CategoryService.instance.getCategories()[indexPath.row]
            cell.updateCellView(for: category)
            return cell
        }
        else
        {
            return CategoryCell()
        }
    }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = CategoryService.instance.getCategories()[indexPath.row]
        let categoryName = category.categoryName
        performSegue(withIdentifier: "PoductsVC", sender: categoryName)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productsVC = segue.destination as? PoductsVC
        {
            assert(sender as? String != nil)
            productsVC.initProducts(forCategory: sender as! String)
        }
    }


}

