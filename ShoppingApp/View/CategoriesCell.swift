//
//  CategoriesCell.swift
//  ShoppingApp
//
//  Created by Matt Deuschle on 9/24/17.
//  Copyright © 2017 Matt Deuschle. All rights reserved.
//

import UIKit

class CategoriesCell: UITableViewCell {

    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var categoryImage: UIImageView!

    func configCell(category: Category) {
        categoryLabel.text = category.title
        categoryImage.image = UIImage(named: category.imageName)
    }
}
