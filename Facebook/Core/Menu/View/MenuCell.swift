//
//  MenuCell.swift
//  Facebook
//
//  Created by Abdulmajit Kubatbekov on 25/3/24.
//

import SwiftUI

struct MenuCell: View {
    private var title: String
    private var name: String
    
    init(title: String, name: String) {
        self.title = title
        self.name = name
    }

    var body: some View {
        VStack(alignment: .leading) {
            Divider()
            HStack(spacing: 15) {
                Image(systemName: name)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 24, height: 24)
                    .foregroundStyle(.gray)
                Text(title)
                Spacer()
                Image(systemName: "chevron.down")
            }
            .padding(.horizontal)
            .padding(.vertical, 7)
            .font(.headline)
        }
    }
}
