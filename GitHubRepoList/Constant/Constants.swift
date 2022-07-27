//
//  Constants.swift
//  GitHubRepoList
//
//  Created by Sagar Mahindrakar on 21/07/22.
//

import Foundation

import UIKit

struct Constants
{
    
    //String constants
    struct strings
    {
        static let ProfileTableViewCell = "ProfileTableViewCell"
        static let RepoTableViewCell = "RepoTableViewCell"

     
    }
    
    struct url
    {
        static let imageurl = "https://avatars.githubusercontent.com/u/41262371?v=4"
    }

    //Error contsants
    struct errors
    {
        static let networkError = "something went wrong"
        static let errorLoadingImage = "Failed loading image"
        static let noResults = "No results found, try searching something else!"
        static let noInternet = "Please try Again.!\nNo Internet."
    }
    
    struct section
    {
        static let noOfHeder = 1
        static let defaultNo = 1
    }

}
