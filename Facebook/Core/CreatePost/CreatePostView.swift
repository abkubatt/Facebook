//
//  CreatePostView.swift
//  Facebook
//
//  Created by Abdulmajit Kubatbekov on 25/3/24.
//

import SwiftUI

struct CreatePostView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var mindText = ""

    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                Divider()
                HStack(alignment: .top) {
                    Image("profilePic")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 45, height: 45)
                        .clipShape(Circle())
                    VStack(alignment: .leading) {
                        Text("Abdulmajit Kubatbekov")
                        
                        HStack {
                            ChoiceView(image: "person.2.fill", name: "Friends")
                            ChoiceView(image: "", name: "Album")
                        }
                        ChoiceView(image: "camera", name: "Off")
                    }
                    .padding(.horizontal)
                }
                .padding()
                TextField("What's on your mind?", text: $mindText, axis: .vertical)
                    .padding(.horizontal)
                Spacer()
                Divider()
                HStack {
                    Spacer()
                    Button {
                        
                    } label: {
                        Image(systemName: "photo.fill.on.rectangle.fill")
                            .foregroundStyle(.green)
                    }
                    Spacer()
                    Button {
                        
                    } label: {
                        Image(systemName: "person.fill")
                            .foregroundStyle(.blue)
                    }
                    Spacer()
                    Button {
                        
                    } label: {
                        Image(systemName: "face.smiling")
                            .foregroundStyle(.yellow)
                    }
                    Spacer()
                    Button {
                        
                    } label: {
                        Image("pin")
                            .resizable()
                            .frame(width: 18, height: 18)
                            .foregroundStyle(.red)
                    }
                    Spacer()
                    Button {
                        
                    } label: {
                        Image(systemName: "ellipsis.circle.fill")
                            .foregroundStyle(Color(.darkGray))
                    }
                    Spacer()
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    HStack {
                        Button {
                            dismiss()
                        } label: {
                            Image(systemName: "arrow.left")
                                .foregroundStyle(.black)
                                .fontWeight(.bold)
                            Text("Create Post")
                        }
                    }
                    .foregroundStyle(.black)
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        
                    } label: {
                        Text("Post")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 80, height: 35)
                            .foregroundStyle(mindText.count == 0 ? Color(.darkGray) : .white)
                            .background(mindText.count == 0 ? Color(.systemGray5) : .blue)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                    .disabled(mindText.count == 0)
                }
            }
        }
    }
}

#Preview {
    CreatePostView()
}
