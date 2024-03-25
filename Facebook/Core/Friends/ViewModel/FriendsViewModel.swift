//
//  FriendsViewModel.swift
//  Facebook
//
//  Created by Abdulmajit Kubatbekov on 25/3/24.
//

import Foundation

class FriendsViewModel: ObservableObject {

    @Published var users: [User] = [

    .init(id: "0", firstName:
            "Omar1", familyName: "Thamri", email: "omar. thamri@gmail.com", profilelmageName: "profilePic" , age: 28, gender: "male", friendsids: ["3"],
          friendsRequestsIds: ["0", "1", "2", "4"], isCurrentUser: true),
    .init(id: "1", firstName:
            "Omar2", familyName: "Thamri", email: "omar. thamri@gmail.com", profilelmageName: "profilePic2" , age: 28, gender: "male", friendsids: ["3"],
          friendsRequestsIds: ["1", "2", "4"], isCurrentUser: true),
    .init(id: "2", firstName:
            "Omar3", familyName: "Thamri", email: "omar. thamri@gmail.com", profilelmageName: "profilePic3" , age: 28, gender: "male", friendsids: ["3"],
          friendsRequestsIds: ["1", "2", "4"], isCurrentUser: true),
    .init(id: "3", firstName:
            "Omar4", familyName: "Thamri", email: "omar. thamri@gmail.com", profilelmageName: "profilePic4" , age: 28, gender: "male", friendsids: ["3"],
          friendsRequestsIds: ["1", "2", "4"], isCurrentUser: true),
    ]
    
    @Published var friendsRequests: [User] = []
    init() {
        setupFriendsRequests()
    }

    private func setupFriendsRequests() {
        self.friendsRequests = self.users.filter { self.users[0].friendsRequestsIds.contains($0.id) }
    }
}
