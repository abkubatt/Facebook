//
//  CustomButton.swift
//  Facebook
//
//  Created by Abdulmajit Kubatbekov on 23/3/24.
//

import SwiftUI

struct CustomButton: View {
    private var image: String
    private var title: String
    private var foregroundColor: Color
    private var backgroundColor: Color
    
    init(image: String, title: String, foregroundColor: Color, backgroundColor: Color) {
        self.image = image
        self.title = title
        self.foregroundColor = foregroundColor
        self.backgroundColor = backgroundColor
    }
    
    var body: some View {
        HStack {
            Image(systemName: image)
            Text(title)
                .font(.footnote)
                .fontWeight(.semibold)
        }
        .foregroundStyle(foregroundColor)
        .padding(.horizontal)
        .frame(height: 34)
        .background(backgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}
