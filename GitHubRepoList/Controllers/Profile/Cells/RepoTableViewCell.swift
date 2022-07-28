//
//  RepoTableViewCell.swift
//  GitHubRepoList
//
//  Created by Sagar Mahindrakar on 17/07/22.
//

import UIKit

class RepoTableViewCell: UITableViewCell {

    @IBOutlet weak var repoNameLabel: UILabel!
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var languageLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        backView.layer.cornerRadius = 5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
