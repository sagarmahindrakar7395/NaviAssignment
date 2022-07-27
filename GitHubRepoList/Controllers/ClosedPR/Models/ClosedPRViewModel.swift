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

    init(){
        getClosedPRInfo()
    }
    
    func getClosedPRInfo(){
        NetworkManger.sharedInstance.fetchGenericData(urlString: "https://api.github.com/repos/amanchawla96/navi-challange/pulls?state=closed") { [weak self](ProfileDetails: [ClosedPR]) in
            self?.ClosedPRInfo = ProfileDetails
            print("ClosedPRInfo:\(String(describing: self?.ClosedPRInfo))")
            self?.delegate?.reloadTable()
    }
}
}
    
