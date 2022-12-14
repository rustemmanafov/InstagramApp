//
//  Models.swift
//  InstagramApp
//
//  Created by Rustem Manafov on 27.11.22.
//

import Foundation

enum Gender {
    case male, female, other
}

struct User {
    let userName: String
    let bio: String
    let name: (first: String, last: String)
    let profilePhoto: URL
    let birthDate: Date
    let gender: Gender
    let counts: UserCount
    let joinDate: Date
}

struct UserCount {
    let followers: Int
    let following: Int
    let posts: Int
}

public enum UserPostType: String {
    case photo = "Photo"
    case video = "Video"
}

public struct UserPost {
    let identifier: String
    let postType: UserPostType
    let thumbnailImage: URL
    let postURL: URL
    let caption: String?
    let likeCount: [PostLike]
    let comment: [PostComment]
    let createdDate: Date
    let taggedUser: [String]
    let owner: User
}

struct PostLike {
    let userName: String
    let postIdentifier: String
}

struct CommentLike {
    let userName: String
    let commentIdentifier: String
}

struct PostComment {
    let identifier: String
    let userName: String
    let text: String
    let createdDate: Date
    let likes: [CommentLike]
}
