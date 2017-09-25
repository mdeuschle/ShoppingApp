//
//  Services.swift
//  ShoppingApp
//
//  Created by Matt Deuschle on 9/24/17.
//  Copyright © 2017 Matt Deuschle. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()

    private let categories = [Category(title: "SHIRTS", imageName: "shirts"),
                              Category(title: "HOODIES", imageName: "hoodies"),
                              Category(title: "HATS", imageName: "hats"),
                              Category(title: "DIGITAL", imageName: "digital")
    ]

    func getCategories() -> [Category] {
        return categories
    }


}






