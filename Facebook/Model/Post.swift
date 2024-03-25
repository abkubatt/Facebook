//
//  Post.swift
//  Facebook
//
//  Created by Abdulmajit Kubatbekov on 25/3/24.
//

import Foundation

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let userId: String
    var postTitle: String
    var postLikes: Int
    var postShares: Int
    var postUri: String
    var isVideo: Bool
    var user: User?
}
