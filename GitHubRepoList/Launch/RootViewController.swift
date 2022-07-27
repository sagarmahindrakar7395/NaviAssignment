//
//  RootViewController.swift
//  GitHubRepoList
//
//  Created by Sagar Mahindrakar on 17/07/22.
//

import Foundation


import UIKit

class RootViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
           goTOMoviesList()
    }
    func goTOMoviesList(){
        AppNavigationHandler.goToProfileViewScreen(from: self)
    }

}
