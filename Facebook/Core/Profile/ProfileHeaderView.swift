//
//  ProfileHeaderView.swift
//  Facebook
//
//  Created by Abdulmajit Kubatbekov on 23/3/24.
//

import SwiftUI

struct ProfileHeaderView: View {
    private var width: CGFloat
    
    init(width: CGFloat) {
        self.width = width
    }

    var body: some View {
        VStack {
            Image("cover_picture")
                .resizable()
                .scaledToFill()
                .frame(width: width, height: 250)
            
            Color.white
                .frame(height: 180)
        }
        .overlay {
            VStack(alignment: .leading) {
                Image("profilePic")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 120, height: 120)
                    .clipShape(Circle())
                    .overlay {
                        Circle()
                            .stroke(Color(.systemGray6), lineWidth: 3)
                    }
                    .padding(.top, 180)
                Text("Abdulmajit Kubatbekov")
                    .font(.title)
                    .fontWeight(.bold)
                Text("4 ")
                    .font(.headline) +
                Text("Friends")
                    .font(.headline)
                    .foregroundStyle(.gray)
                HStack {
                    CustomButton(image: "plus",
                                 title: "Add to story",
                                 foregroundColor: .white,
                                 backgroundColor: .blue)
                    CustomButton(image: "pencil",
                                 title: "Edit Profile",
                                 foregroundColor: Color(.darkGray),
                                 backgroundColor: Color(.systemGray6))
                    CustomButton(image: "plus",
                                 title: "",
                                 foregroundColor: Color(.darkGray),
                                 backgroundColor: Color(.systemGray6))
                }
                HStack { Spacer() }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    ProfileHeaderView(width: 250)
}
