//
//  StoryFeedView.swift
//  Facebook
//
//  Created by Abdulmajit Kubatbekov on 19/3/24.
//

import SwiftUI

struct StoryFeedView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                MyStoryCardView()
                ForEach(0 ..< 10) { _ in
                    StoryCardView()
                }
            }
        }
        .scrollIndicators(.hidden)
        .padding(.top, 5)
        .padding(.bottom, 5)
    }
}

#Preview {
    StoryFeedView()
}
