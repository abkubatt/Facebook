//
//  ManagerProfilePostsView.swift
//  Facebook
//
//  Created by Abdulmajit Kubatbekov on 25/3/24.
//

import SwiftUI

struct ManagerProfilePostsView: View {
    private var width: CGFloat

    init(width: CGFloat) {
        self.width = width
    }

    var body: some View {
        VStack {
            HStack {
                Text("Posts")
                    .font(.headline)
                    .fontWeight(.semibold)
                Spacer()
                Text("Filter")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.blue)
            }
            .padding(.horizontal)
            
            HStack(spacing: 16) {
                Image("profilePic")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                Text("What's on your main?")
                Spacer()
                Image(systemName: "photo.on.rectangle.angled")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 20, height: 20)
                    .foregroundStyle(.green)
            }
            .padding(.horizontal)
            
            Color(.systemGray6)
                .frame(height: 60)
                .overlay {
                    HStack {
                        ReelResuableView(
                        image: "play.rectangle.fill", title: "Reel")
                        ReelResuableView(
                        image: "video.fill", title: "Live")
                        Spacer()
                    }
                    .padding(.horizontal)
                }
            
            Button {
                
            } label: {
                HStack(spacing: 10) {
                    Image(systemName: "text.bubble.fill")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 16, height: 16)
                    Text("Manage posts")
                        .font(.headline)
                        .fontWeight(.semibold)
                }
                .foregroundStyle(Color(.darkGray))
                .frame(width: width - 30, height: 44)
                .background(Color(.systemGray5))
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .padding(.vertical)
            }
            DividerView(width: width)
        }
    }
}

#Preview {
    ManagerProfilePostsView(width: 200)
}
