//
//  FriendsView.swift
//  Facebook
//
//  Created by Abdulmajit Kubatbekov on 25/3/24.
//

import SwiftUI

struct FriendsView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 25) {
                    HStack {
                        TagView(title: "Sugesstions")
                        TagView(title: "Your friends")
                    }
                    .padding(.horizontal)
                    Spacer()
                    
                    HStack {
                        Text("Friend request")
                            .font(.headline)
                            .fontWeight(.semibold)
                        
                        Text("3")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .foregroundStyle(.red)
                        
                        Spacer()
                        
                        Button {
                            
                        } label: {
                            Text("See all")
                        }
                    }
                    .padding(.horizontal)
                    ForEach(0 ..< 10) { _ in
                        FriendCell()
                    }
                    Spacer()
                }
                .padding(.vertical)
            }
            .scrollIndicators(.hidden)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Text("Friends")
                        .font(.title)
                        .fontWeight(.semibold)
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "magnifyingglass")
                        .fontWeight(.bold)
                }
            }
        }
    }
}

#Preview {
    FriendsView()
}
