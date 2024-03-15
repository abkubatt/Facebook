//
//  FeedView.swift
//  Facebook
//
//  Created by Abdulmajit Kubatbekov on 16/3/24.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            VStack {
                FeedHeaderView()
                Spacer()
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Text("Facebook")
                        .font(.system(size: 32, weight: .bold))
                        .foregroundStyle(.blue)
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    HStack(spacing: 20) {
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 20, height: 20)
                        
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 20, height: 20)
                            .font(.system(size: 18, weight: .bold))
                        
                        Image("messenger")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 20, height: 20)
                    }
                }
            }
        }
    }
}

#Preview {
    FeedView()
}
