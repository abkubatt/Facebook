//
//  User.swift
//  Facebook
//
//  Created by Abdulmajit Kubatbekov on 25/3/24.
//

import Foundation

struct User: Identifiable, Hashable, Codable {
    let id: String
    var firstName: String
    var familyName: String
    var email: String
    var profilelmageName: String?
    var coverImageName: String?
    var age: Int
    let gender: String
    var friendsids: [String]
    var friendsRequestsIds: [String]
    var isCurrentUser: Bool
}
