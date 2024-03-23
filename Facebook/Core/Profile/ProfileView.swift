//
//  ProfileView.swift
//  Facebook
//
//  Created by Abdulmajit Kubatbekov on 16/3/24.
//

import SwiftUI

struct ProfileView: View {
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        GeometryReader { proxy in
            ScrollView {
                VStack {
                    ProfileHeaderView(width: proxy.size.width)
                    DividerView(width: proxy.size.width)
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("Abdulmajit Kubatbekov")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "arrow.left")
                            .foregroundStyle(.black)
                            .fontWeight(.bold)
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "magnifyingglass")
                            .foregroundStyle(.black)
                            .fontWeight(.bold)
                    }
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}
