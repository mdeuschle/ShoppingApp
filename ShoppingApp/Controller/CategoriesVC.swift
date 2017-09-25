//
//  ViewController.swift
//  ShoppingApp
//
//  Created by Matt Deuschle on 9/24/17.
//  Copyright © 2017 Matt Deuschle. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController {

    @IBOutlet weak var categoryTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTableView.delegate = self
        categoryTableView.dataSource = self
    }
}

extension CategoriesVC: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ReusableCell.categoryCell.rawValue) as? CategoriesCell else {
            return CategoriesCell()
        }
        let category = DataService.instance.getCategories()[indexPath.row]
        cell.configCell(category: category)
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
}

