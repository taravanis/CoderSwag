//
//  ViewController.swift
//  CoderSwag
//
//  Created by Theophilos Aravanis on 11/5/17.
//  Copyright © 2017 Theophilos Aravanis. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {


    @IBOutlet weak var catagoryTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        catagoryTable.delegate = self
        catagoryTable.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CatagoryCell") as? CatagoryCell {
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            return cell
        } else {
            print("We have a problem")
            return CatagoryCell()
        }
    }
}

