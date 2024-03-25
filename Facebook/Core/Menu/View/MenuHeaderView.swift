//
//  MenuHeaderView.swift
//  Facebook
//
//  Created by Abdulmajit Kubatbekov on 25/3/24.
//

import SwiftUI

struct MenuHeaderView: View {
    var body: some View {
        VStack {
            HStack(spacing: 15) {
                Image("profilePic")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                Text("Abdulmajit Kubatbekov")
                Spacer()
                Image(systemName: "chevron.down.circle.fill")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 24, height: 24)
                    .foregroundStyle(Color(.systemGray3))
            }
            Divider()
            HStack(spacing: 15) {
                Image(systemName: "plus.circle.fill")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 30, height: 30)
                Text("Create another profile")
                Spacer()
            }
            .foregroundStyle(Color(.darkGray))
        }
        .padding()
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .padding()
    }
}

#Preview {
    MenuHeaderView()
}
