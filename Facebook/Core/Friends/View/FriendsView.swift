//
//  FriendsView.swift
//  Facebook
//
//  Created by Abdulmajit Kubatbekov on 25/3/24.
//

import SwiftUI

struct FriendsView: View {
    @StateObject private var viewModel = FriendsViewModel()
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
                        
                        Text("\(viewModel.friendsRequests.count)")
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
                    ForEach(0 ..< viewModel.friendsRequests.count) { index in
                        FriendCell(viewModel: viewModel, index: index)
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
