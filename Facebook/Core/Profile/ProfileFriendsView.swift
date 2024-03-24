//
//  ProfileFriendsView.swift
//  Facebook
//
//  Created by Abdulmajit Kubatbekov on 24/3/24.
//

import SwiftUI

struct ProfileFriendsView: View {
    private var gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    private var width: CGFloat

    init(width: CGFloat) {
        self.width = width
    }

    var body: some View {
        VStack {
            HStack {
                VStack {
                    Text("Friends")
                        .font(.headline)
                        .fontWeight(.semibold)
                    
                    Text("4 friends")
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                }
                
                Spacer()
                
                Text("Find Friends")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.blue)
            }
            LazyVGrid(columns: gridItems) {
                ForEach(0 ..< 10) { _ in
                    VStack {
                        Image("profilePic1")
                            .resizable()
                            .scaledToFill()
                            .frame(width: width / 3 - 20, height: width / 3 - 20)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                        Text("Abdulmajit Kubatbekov")
                            .font(.headline)
                            .fontWeight(.semibold)
                    }
                }
            }
            Text("See all friends")
                .font(.headline)
                .fontWeight(.semibold)
                .frame(width: width - 40, height: 30)
                .background(Color(.systemGray5))
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .padding(.vertical)
                .foregroundStyle(Color(.darkGray))
        }
        .padding(.horizontal)
    }
}
