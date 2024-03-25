//
//  ShortCutsView.swift
//  Facebook
//
//  Created by Abdulmajit Kubatbekov on 25/3/24.
//

import SwiftUI

struct ShortCutsView: View {

    private var width: CGFloat

    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 15),
        .init(.flexible(), spacing: 15)
    ]
    
    private let shortcustsArray: [(String, String)] = [
        ("Memories", "gobackward"),
        ("Saved", "bookmark.fill"),
        ("Groups", "person.2.circle"),
        ("Video", "play.tv.fill"),
        ("Marketplace", "storefront.fill"),
        ("Friends", "person.2.fill"),
        ("Feeds", "calendar.badge.clock"),
        ("Events", "calendar")
    ]
    
    init(width: CGFloat) {
        self.width = width
    }

    var body: some View {
        VStack(alignment: .leading) {
            Text("Your shortcuts")
                .font(.headline)
                .foregroundStyle(Color(.darkGray))
            LazyVGrid(columns: gridItems, spacing: 15) {
                ForEach(0..<8) { index in
                    VStack(alignment: .leading, spacing: 12) {
                        Image(systemName: shortcustsArray[index].1)
                            .foregroundStyle(.blue)
                        Text(shortcustsArray[index].0)
                            .font(.headline)
                        HStack { Spacer() }
                    }
                    .padding(.horizontal)
                    .frame(width: width * 0.45, height: 80)
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                }
            }
            
            Button {
                
            } label: {
                Text("See more")
                    .customButtonModifier(width: width)
            }
        }
        .padding(.horizontal)
    }
}
