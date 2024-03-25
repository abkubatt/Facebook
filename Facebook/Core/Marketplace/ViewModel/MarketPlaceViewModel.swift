//
//  MarketPlaceViewModel.swift
//  Facebook
//
//  Created by Abdulmajit Kubatbekov on 25/3/24.
//

import Foundation

final class MarketPlaceViewModel: ObservableObject {
    
    @Published var items: [Item] = [
        .init(id: UUID().uuidString,
              item_name: "1 bed 1 bathroom",
              item_price: 950,
              imageName: "apartment1"),
        .init(id: UUID().uuidString,
              item_name: "1 beb 1 bath flat",
              item_price: 800,
              imageName: "apartment2"),
        .init(id: UUID().uuidString,
              item_name: "2015 BMW",
              item_price: 2608,
              imageName: "car1"),

        .init(id: UUID().uuidString,
              item_name: "2038 Mercedes",
              item_price: 44,
              imageName: "car2"),
        .init(id: UUID().uuidString,
              item_name: "corner sofa",
              item_price: 80,
              imageName: "sofa1"),
        .init(id: UUID().uuidString,
              item_name: "corner sofa",
              item_price: 86,
              imageName: "sofa2"),]
}
