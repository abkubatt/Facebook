//
//  TagView.swift
//  Facebook
//
//  Created by Abdulmajit Kubatbekov on 25/3/24.
//

import SwiftUI

struct TagView: View {
    private var title: String
    init(title: String) {
        self.title = title
    }

    var body: some View {
        Text(title)
            .font(.subheadline)
            .padding(.horizontal)
            .padding(.vertical, 8)
            .background(Color(.systemGray5))
            .clipShape(RoundedRectangle(cornerRadius: 30))
    }
}
