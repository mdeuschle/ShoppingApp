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

    private let shirts = [Product(imageName: "shirt01", productName: "Deveslopes Cotton Shirt", imageCost: "$22"),
                          Product(imageName: "shirt02", productName: "Devslope Vintage Shirt", imageCost: "$28"),
                          Product(imageName: "shirt03", productName: "Deveslopes Green Shirt", imageCost: "$42"),
                          Product(imageName: "shirt05", productName: "Devslope Cool Shirt", imageCost: "$23"),
                          Product(imageName: "shirt06", productName: "Devslope Retro Organic Shirt", imageCost: "$28")

    ]

    private let hats = [Product(imageName: "hat01", productName: "Deveslopes Cotton Hat", imageCost: "$22"),
                          Product(imageName: "hat02", productName: "Devslope Vintage Hat", imageCost: "$28"),
                          Product(imageName: "hat03", productName: "Deveslopes Green Hat", imageCost: "$42"),
                          Product(imageName: "hat04", productName: "Devslope Cool Hat", imageCost: "$23")

    ]

    private let hoodies = [Product(imageName: "hoodie01", productName: "Deveslopes Cotton Hoodie", imageCost: "$22"),
                        Product(imageName: "hoodie02", productName: "Devslope Vintage Hoodie", imageCost: "$28"),
                        Product(imageName: "hoodie03", productName: "Deveslopes Green Hoodie", imageCost: "$42"),
                        Product(imageName: "hoodie04", productName: "Devslope Cool Hoodie", imageCost: "$23")
    ]

    private let digitalGoods = [Product]()

    func getProducts(productName: String) -> [Product] {

        switch productName {
        case "HATS":
            return getHats()
        case "SHIRTS":
            return getShirts()
        case "HOODIES":
            return getHoodies()
        default:
            return getHoodies()
        }
    }

    func getHats() -> [Product] {
        return hats
    }

    func getShirts() -> [Product] {
        return shirts
    }

    func getHoodies() -> [Product] {
        return hoodies
    }
}






