//
//  CategoryModel.swift
//  SnackOrder
//
//  Created by Rittam Debnath on 6/30/24.
//

import Foundation
import SwiftUI

struct CategoryModel: Identifiable, Hashable {
    var id: UUID = .init()
    var icon: String
    var title: String
}

var categoryList: [CategoryModel] = [
    CategoryModel(icon: "", title: "All"),
    CategoryModel(icon: "line.3.horizontal", title: "Choco"),
    CategoryModel(icon: "wafles", title: "Waffles"),
    CategoryModel(icon: "toffee", title: "Toffee")
]
