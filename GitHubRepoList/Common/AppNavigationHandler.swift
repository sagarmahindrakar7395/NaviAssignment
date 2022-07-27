//
//  AppNavigationHandler.swift
//  GitHubRepoList
//
//  Created by Sagar Mahindrakar on 17/07/22.
//

import Foundation


import Foundation
import UIKit

class AppNavigationHandler {
    public static func goToProfileViewScreen(from:UIViewController){
    let vc = ProfileViewController()
    vc.hidesBottomBarWhenPushed = true
    vc.navigationItem.setHidesBackButton(true, animated: true)
    from.navigationController?.pushViewController(vc, animated: true)
    }
}
