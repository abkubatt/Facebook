//
//  FeedHeaderView.swift
//  Facebook
//
//  Created by Abdulmajit Kubatbekov on 16/3/24.
//

import SwiftUI

struct FeedHeaderView: View {
    @State private var showCreatePost = false
    var body: some View {
        HStack {
            NavigationLink {
                ProfileView()
                    .navigationBarBackButtonHidden()
            } label: {
                Image("profilePic")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
            }
            
            Button {
                showCreatePost.toggle()
            } label: {
                HStack {
                    Text("What's on your main?")
                        .foregroundStyle(.black)
                    
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.vertical, 10)
                .overlay {
                    Capsule()
                        .stroke(Color(.systemGray4), lineWidth: 1)
                }
                .padding(.leading, 5)
                .padding(.trailing, 15)
            }
            
            Image(systemName: "photo.on.rectangle.angled")
                .resizable()
                .scaledToFill()
                .frame(width: 20, height: 20)
                .foregroundStyle(.green)
        }
        .padding(.horizontal)
        .padding(.vertical, 20)
        .fullScreenCover(isPresented: $showCreatePost, content: {
            CreatePostView()
        })
    }
}

#Preview {
    FeedHeaderView()
}
