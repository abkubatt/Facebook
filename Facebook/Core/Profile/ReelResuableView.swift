//
//  ReelResuableView.swift
//  Facebook
//
//  Created by Abdulmajit Kubatbekov on 25/3/24.
//

import SwiftUI

struct ReelResuableView: View {
    private var image: String
    private var title: String

    init(image: String, title: String) {
        self.image = image
        self.title = title
    }

    var body: some View {
        HStack(spacing: 10) {
            Image(systemName: image)
                .resizable()
                .scaledToFill()
                .frame(width: 16, height: 16)
                .foregroundStyle(.red)
            Text(title)
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundStyle(Color(.darkGray))
        }
        .padding(.horizontal, 25)
        .padding(.vertical, 8)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 30))
    }
}
