//
//  MarketPlaceVIEW.swift
//  Facebook
//
//  Created by Abdulmajit Kubatbekov on 25/3/24.
//

import SwiftUI

struct MarketPlaceView: View {
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]

    var body: some View {
        NavigationStack {
            GeometryReader { proxy in
                ScrollView {
                    HStack {
                        MarketPlaceButton(
                            title: "Sell", image: "square.and.pencil", width: proxy.size.width)
                        MarketPlaceButton(
                            title: "Categories", image: "list.bullet", width: proxy.size.width)
                    }
                    .padding()
                    Divider()
                    VStack(alignment: .leading) {
                        HStack(spacing: 2) {
                            Text("Today's picks")
                                .font(.headline)
                                .fontWeight(.semibold)
                            
                            Spacer()
                            Image("pin")
                                .resizable()
                                .frame(width: 20, height: 16)
                            
                            Text("London")
                                .font(.subheadline)
                                .foregroundStyle(.blue)
                        }
                        .padding()
                        
                        LazyVGrid(columns: gridItems, spacing: 1) {
                            ForEach(0 ..< 7) { _ in
                                VStack {
                                    Image("apartment1")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: proxy.size.width / 2 - 3,
                                               height: proxy.size.width / 2 - 3)
                                        .clipped()
                                    
                                    Text("950$ - 1 bed 1 bathroom")
                                        .font(.subheadline)
                                        .fontWeight(.semibold)
                                        .padding(.vertical)
                                }
                            }
                        }
                    }
                }
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Text("MarketPlace")
                            .font(.title)
                            .fontWeight(.bold)
                    }
                    
                    ToolbarItem(placement: .topBarTrailing) {
                        HStack(spacing: 24) {
                            Image(systemName: "person.fill")
                            Image(systemName: "magnifyingglass")
                        }
                        .fontWeight(.bold)
                    }
                }
            }
        }
    }
}

#Preview {
    MarketPlaceView()
}
