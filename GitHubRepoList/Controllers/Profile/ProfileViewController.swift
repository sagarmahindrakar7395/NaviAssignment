//
//  ProfileViewController.swift
//  GitHubRepoList
//
//  Created by Sagar Mahindrakar on 17/07/22.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var viewModel = ProfileViewModel()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate = self
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.register(UINib(nibName: Constants.strings.ProfileTableViewCell, bundle: nil), forCellReuseIdentifier: Constants.strings.ProfileTableViewCell)
        tableView.register(UINib(nibName: Constants.strings.RepoTableViewCell, bundle: nil), forCellReuseIdentifier: Constants.strings.RepoTableViewCell)

    }
}

extension ProfileViewController: UITableViewDataSource, UITableViewDelegate{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return repositeries.total.rawValue
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch  repositeries(rawValue:section){
        case .heder:
            return Constants.section.noOfHeder
        case .repos:
            return viewModel.repoInfo?.count ?? Constants.section.defaultNo
        default:
            return Constants.section.defaultNo
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch repositeries(rawValue: indexPath.section){
        case .heder:
            let cell = tableView.dequeueReusableCell(withIdentifier: Constants.strings.ProfileTableViewCell, for: indexPath) as! ProfileTableViewCell
            if let model = viewModel.profileInfo{
                cell.populate(model: model)
            }
            return cell
        case .repos:
            let cell = tableView.dequeueReusableCell(withIdentifier: Constants.strings.RepoTableViewCell, for: indexPath) as! RepoTableViewCell
            cell.repoNameLabel.text = viewModel.repoInfo?[indexPath.row].name
            return cell
        default:
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc : ClosedPRViewController = ClosedPRViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }

}

extension ProfileViewController: ProfileVMDelegate {
    
    func reloadTable() {
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    
}
