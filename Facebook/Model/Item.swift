//
//  Item.swift
//  Facebook
//
//  Created by Abdulmajit Kubatbekov on 25/3/24.
//

import Foundation

struct Item: Identifiable, Hashable, Codable {
    let id: String
    var item_name: String
    var item_price: Int
    var imageName: String
}
