//
//  RepoInfo.swift
//  GitHubRepoList
//
//  Created by Sagar Mahindrakar on 21/07/22.
//

import Foundation


// MARK: - Repositery
struct Repositery : Decodable{
    var id: Int?
    var nodeID: String?
    var name: String?
    var fullName: String?
    var repositeryPrivate: Bool?
    var owner: Owner?
    var htmlURL: String?
    var repositeryDescription: String?
    var fork: Bool?
    var url: String?
    var forksURL: String?
    var keysURL: String?
    var collaboratorsURL: String?
    var teamsURL: String?
    var hooksURL: String?
    var issueEventsURL: String?
    var eventsURL: String?
    var assigneesURL: String?
    var branchesURL: String?
    var tagsURL: String?
    var blobsURL: String?
    var gitTagsURL: String?
    var gitRefsURL: String?
    var treesURL: String?
    var statusesURL: String?
    var languagesURL: String?
    var stargazersURL: String?
    var contributorsURL: String?
    var subscribersURL: String?
    var subscriptionURL: String?
    var commitsURL: String?
    var gitCommitsURL: String?
    var commentsURL: String?
    var issueCommentURL: String?
    var contentsURL: String?
    var compareURL: String?
    var mergesURL: String?
    var archiveURL: String?
    var downloadsURL: String?
    var issuesURL: String?
    var pullsURL: String?
    var milestonesURL: String?
    var notificationsURL: String?
    var labelsURL: String?
    var releasesURL: String?
    var deploymentsURL: String?
    var createdAt: String?
    var updatedAt: String?
    var pushedAt: String?
    var gitURL: String?
    var sshURL: String?
    var cloneURL: String?
    var svnURL: String?
    var homepage: String?
    var size: Int?
    var stargazersCount: Int?
    var watchersCount: Int?
    var language: String?
    var hasIssues: Bool?
    var hasProjects: Bool?
    var hasDownloads: Bool?
    var hasWiki: Bool?
    var hasPages: Bool?
    var forksCount: Int?
    var archived: Bool?
    var disabled: Bool?
    var openIssuesCount: Int?
    var allowForking: Bool?
    var isTemplate: Bool?
    var webCommitSignoffRequired: Bool?
    var visibility: String?
    var forks: Int?
    var openIssues: Int?
    var watchers: Int?
    var defaultBranch: String?
}

// MARK: - Owner
struct Owner : Decodable{
    var login: String?
    var id: Int?
    var nodeID: String?
    var avatarURL: String?
    var gravatarID: String?
    var url: String?
    var htmlURL: String?
    var followersURL: String?
    var followingURL: String?
    var gistsURL: String?
    var starredURL: String?
    var subscriptionsURL: String?
    var organizationsURL: String?
    var reposURL: String?
    var eventsURL: String?
    var receivedEventsURL: String?
    var type: String?
    var siteAdmin: Bool?
}
