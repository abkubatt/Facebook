//
//  PostView.swift
//  Facebook
//
//  Created by Abdulmajit Kubatbekov on 21/3/24.
//

import SwiftUI

struct PostView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("profilePic")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                VStack(alignment: .leading, spacing: 0) {
                    Text("Abdulmajit Kubatbekov")
                        .font(.system(size: 14, weight: .semibold))
                    
                    HStack(spacing: 5) {
                        Text("1 d")
                        Circle()
                            .frame(width: 2, height: 2)
                            .fontWeight(.bold)
                        Image(systemName: "globe")
                    }
                    .font(.system(size: 12))
                    .foregroundStyle(.blue)
                }
                Spacer()
                HStack(spacing: 24) {
                    Image(systemName: "ellipsis")
                    Image(systemName: "xmark")
                }
                .foregroundStyle(Color(.darkGray))
                .fontWeight(.bold)
            }
            .padding(.horizontal)
            Text("Time to party with team")
                .padding(.horizontal)
            Image("office")
                .resizable()
                .scaledToFill()
            
            HStack(spacing: 3) {
                Image("like")
                    .resizable()
                    .frame(width: 18, height: 18)
                
                Text("5")
                Spacer()
                Text("3 comments")
                Text("•")
                    .fontWeight(.bold)
                Text("2 shares")
            }
            
            .padding(.horizontal)
            .font(.system(size: 12))
            .foregroundStyle(.blue)
            
            Divider()
                .background(.white.opacity(0.5))
            
            HStack {
                Spacer()
                
                HStack {
                    Image(systemName: "hand.thumbsup")
                    Text("Like")
                }
                Spacer()
                HStack {
                    Image(systemName: "message")
                    Text("Comment")
                }
                Spacer()
                HStack {
                    Image("icone-messager-noir")
                        .resizable()
                        .frame(width: 20, height: 20)
                    Text("Send")
                }
                Spacer()
                HStack {
                    Image(systemName: "arrowshape.turn.up.right")
                    Text("Share")
                }
                Spacer()
            }
            .font(.system(size: 12))
            .foregroundStyle(.blue)
        }
    }
}

#Preview {
    PostView()
}
