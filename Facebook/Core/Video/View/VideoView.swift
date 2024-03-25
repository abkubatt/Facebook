//
//  VideoView.swift
//  Facebook
//
//  Created by Abdulmajit Kubatbekov on 25/3/24.
//

import SwiftUI

struct VideoView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VideoOptionsView()
                ForEach(0..<10) { _ in
                    PostView(isVideo: true)
                }
            }
            .scrollIndicators(.hidden)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Text("Video")
                        .font(.title)
                        .fontWeight(.bold)
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    HStack(spacing: 16) {
                        Image(systemName: "person.fill")
                        Image(systemName: "magnifyingglass")
                    }
                    .fontWeight(.bold)
                }
            }
        }
    }
}

#Preview {
    VideoView()
}
