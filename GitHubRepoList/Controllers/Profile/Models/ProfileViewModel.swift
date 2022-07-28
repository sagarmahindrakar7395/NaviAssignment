//
//  ProfileViewModel.swift
//  GitHubRepoList
//
//  Created by Sagar Mahindrakar on 17/07/22.
//

import Foundation

protocol ProfileVMDelegate: AnyObject {
    func reloadTable()
}

class ProfileViewModel{

    var profileInfo : ProfileInfoModel?
    var repoInfo : [Repositery]?
    weak var delegate: ProfileVMDelegate?

    init(){
        getProfileInfo()
        getRepoInfo()
    }
    
    func getProfileInfo(){
        NetworkManger.sharedInstance.fetchGenericData(urlString: Constants.url.profileInfo) { [weak self](ProfileDetails: ProfileInfoModel) in
            self?.profileInfo = ProfileDetails
            print("ProfileDetails:\(String(describing: self?.profileInfo))")
            self?.delegate?.reloadTable()
        }
        
    }
    
    func getRepoInfo(){
        NetworkManger.sharedInstance.fetchGenericData(urlString: Constants.url.repoInfo) { [weak self](ProfileDetails: [Repositery]) in
            self?.repoInfo = ProfileDetails
            print("repoInfo:\(String(describing: self?.repoInfo))")
            self?.delegate?.reloadTable()
        }
    }

    
    
}
