//
//  ProductsVC.swift
//  CoderSwag
//
//  Created by Theophilos Aravanis on 11/12/17.
//  Copyright © 2017 Theophilos Aravanis. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var productsCollection: UICollectionView!

    private (set) public var products = [Product]()
    override func viewDidLoad() {
        super.viewDidLoad()
        productsCollection.delegate = self
        productsCollection.dataSource = self
    }

    func initProducts(category: Category) {
      products = DataService.instance.getProducts(forCategoryTitle: category.title)
      navigationItem.title = category.title
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
           let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        } else {
            print("we have another problem")
        }
        return ProductCell()
    }
}
