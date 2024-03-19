//
//  DividerView.swift
//  Facebook
//
//  Created by Abdulmajit Kubatbekov on 19/3/24.
//

import SwiftUI

struct DividerView: View {
    private var width: CGFloat

    init(width: CGFloat) {
        self.width = width
    }

    var body: some View {
        Rectangle()
            .foregroundStyle(Color(.systemGray6))
            .frame(width: width, height: 6)
    }
}
