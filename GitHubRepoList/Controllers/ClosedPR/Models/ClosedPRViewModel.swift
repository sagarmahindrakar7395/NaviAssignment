//
//  ClosedPRViewModel.swift
//  GitHubRepoList
//
//  Created by Sagar Mahindrakar on 27/07/22.
//

import Foundation

protocol ClosedPRVMDelegate: AnyObject {
    func reloadTable()
}

class ClosedPRViewModel{
    
    var ClosedPRInfo : [ClosedPR]?
    weak var delegate: ClosedPRVMDelegate?
    var repoName:String?

    init(){
    }
    
    func getClosedPRInfo(){
        NetworkManger.sharedInstance.fetchGenericData(urlString: "\(Constants.url.frontURL)\(repoName ?? "")\(Constants.url.endURL)") { [weak self](ProfileDetails: [ClosedPR]) in
            self?.ClosedPRInfo = ProfileDetails
            print("ClosedPRInfo:\(String(describing: self?.ClosedPRInfo))")
            self?.delegate?.reloadTable()
    }
}
}
    
