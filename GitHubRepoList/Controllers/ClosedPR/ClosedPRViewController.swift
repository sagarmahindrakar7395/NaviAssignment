//
//  ClosedPRViewController.swift
//  GitHubRepoList
//
//  Created by Sagar Mahindrakar on 27/07/22.
//

import UIKit

class ClosedPRViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var viewModel = ClosedPRViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate = self
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.register(UINib(nibName: Constants.strings.ClosedPRTableviewCell, bundle: nil), forCellReuseIdentifier: Constants.strings.ClosedPRTableviewCell)

    }

}

extension ClosedPRViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.ClosedPRInfo?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: Constants.strings.ClosedPRTableviewCell, for: indexPath) as? ClosedPRTableViewCell{
            if let model = viewModel.ClosedPRInfo?[indexPath.row]{
            cell.populate(model: model)
        }
        return cell
        } else{
        return UITableViewCell()
        }

}
}


extension ClosedPRViewController: ClosedPRVMDelegate {
    
    func reloadTable() {
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    
}
