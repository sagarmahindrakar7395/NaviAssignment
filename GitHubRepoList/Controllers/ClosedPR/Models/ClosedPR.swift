//
//  ClosedPR.swift
//  GitHubRepoList
//
//  Created by Sagar Mahindrakar on 27/07/22.
//

import Foundation

struct ClosedPR : Decodable{
    var title: String?
    var created_at: String?
    var closed_at: String?
}
