//
//  ChoiceView.swift
//  Facebook
//
//  Created by Abdulmajit Kubatbekov on 25/3/24.
//

import SwiftUI

struct ChoiceView: View {
    private var image: String
    private var name: String
    
    init(image: String, name: String) {
        self.image = image
        self.name = name
    }

    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: image)
                .frame(width: 14, height: 12)
            
            Text(name)
            
            Text("▼")
                .font(.caption2)
        }
        .foregroundStyle(.blue)
        .font(.subheadline)
        .fontWeight(.bold)
        .padding(.horizontal)
        .padding(.vertical, 5)
        .background(Color(.systemGray5))
        .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}
