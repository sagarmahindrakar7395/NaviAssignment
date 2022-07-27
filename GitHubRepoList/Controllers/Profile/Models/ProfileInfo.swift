//
//  ProfileInfo.swift
//  GitHubRepoList
//
//  Created by Sagar Mahindrakar on 17/07/22.
//

import Foundation

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let profileInfoModel = try? newJSONDecoder().decode(ProfileInfoModel.self, from: jsonData)

import Foundation

// MARK: - ProfileInfoModel
class ProfileInfoModel: Codable {
    var login: String?
    var id: Int?
    var avatarURL: String?
    var url, htmlURL, followersURL: String?
    var followingURL, gistsURL, starredURL: String?
    var subscriptionsURL, organizationsURL, reposURL: String?
    var eventsURL: String?
    var receivedEventsURL: String?
    var type: String?
    var siteAdmin: Bool?
    var name: String?
    var company: JSONNull?
    var blog, location: String?
    var email, hireable, bio, twitterUsername: JSONNull?
    var publicRepos, publicGists, followers, following: Int?
    var createdAt, updatedAt: Date?

    enum CodingKeys: String, CodingKey {
        case login, id
        case avatarURL
        case url
        case htmlURL
        case followersURL
        case followingURL
        case gistsURL
        case starredURL
        case subscriptionsURL
        case organizationsURL
        case reposURL
        case eventsURL
        case receivedEventsURL
        case type
        case siteAdmin
        case name, company, blog, location, email, hireable, bio
        case twitterUsername
        case publicRepos
        case publicGists
        case followers, following
        case createdAt
        case updatedAt
    }

    init(login: String?, id: Int?, avatarURL: String?, url: String?, htmlURL: String?, followersURL: String?, followingURL: String?, gistsURL: String?, starredURL: String?, subscriptionsURL: String?, organizationsURL: String?, reposURL: String?, eventsURL: String?, receivedEventsURL: String?, type: String?, siteAdmin: Bool?, name: String?, company: JSONNull?, blog: String?, location: String?, email: JSONNull?, hireable: JSONNull?, bio: JSONNull?, twitterUsername: JSONNull?, publicRepos: Int?, publicGists: Int?, followers: Int?, following: Int?, createdAt: Date?, updatedAt: Date?) {
        self.login = login
        self.id = id
        self.avatarURL = avatarURL
        self.url = url
        self.htmlURL = htmlURL
        self.followersURL = followersURL
        self.followingURL = followingURL
        self.gistsURL = gistsURL
        self.starredURL = starredURL
        self.subscriptionsURL = subscriptionsURL
        self.organizationsURL = organizationsURL
        self.reposURL = reposURL
        self.eventsURL = eventsURL
        self.receivedEventsURL = receivedEventsURL
        self.type = type
        self.siteAdmin = siteAdmin
        self.name = name
        self.company = company
        self.blog = blog
        self.location = location
        self.email = email
        self.hireable = hireable
        self.bio = bio
        self.twitterUsername = twitterUsername
        self.publicRepos = publicRepos
        self.publicGists = publicGists
        self.followers = followers
        self.following = following
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}


enum repositeries: Int{
    case heder = 0,
    repos = 1,
    total = 2
}
