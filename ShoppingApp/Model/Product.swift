//
//  Product.swift
//  ShoppingApp
//
//  Created by Matt Deuschle on 9/24/17.
//  Copyright © 2017 Matt Deuschle. All rights reserved.
//

import Foundation

struct Product {
    private(set) public var imageName: String!
    private(set) public var productName: String!
    private(set) public var imageCost: String!

    init(imageName: String, productName: String, imageCost: String) {
        self.imageName = imageName
        self.productName = productName
        self.imageCost = imageCost
    }
}

