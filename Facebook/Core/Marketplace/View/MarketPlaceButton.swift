//
//  MarketPlaceButton.swift
//  Facebook
//
//  Created by Abdulmajit Kubatbekov on 25/3/24.
//

import SwiftUI

struct MarketPlaceButton: View {
    private let title: String
    private let image: String
    private let width: CGFloat
    
    init(title: String, image: String, width: CGFloat) {
        self.title = title
        self.image = image
        self.width = width
    }

    var body: some View {
        HStack {
            Image(systemName: image)
            Text(title)
                .font(.headline)
                .fontWeight(.semibold)
        }
        .frame(width: width * 0.45, height: 44)
        .background(Color(.systemGray5))
        .clipShape(RoundedRectangle(cornerRadius: 30))
    }
}
