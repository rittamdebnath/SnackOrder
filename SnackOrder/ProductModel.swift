//
//  ProductModel.swift
//  SnackOrder
//
//  Created by Rittam Debnath on 6/30/24.
//

import Foundation
import SwiftUI

struct Product: Identifiable {
    var id: UUID = .init()
    var name: String
    var category: String
    var image: String
    var color: Color
    var price: Int
}

var productList : [Product] = [
    Product(name: "Bingo", category: "Juniper", image: "", color: .pink, price: 8),
    Product(name: "Angles", category: "Mangoe", image: "", color: .brown, price: 8),
    Product(name: "Pepper Mint", category: "Love", image: "", color: .blue, price: 8),
    Product(name: "Singles", category: "Juniper", image: "", color: .yellow, price: 8),
    Product(name: "Pringles", category: "Mangoe", image: "", color: .red, price: 8)
]
