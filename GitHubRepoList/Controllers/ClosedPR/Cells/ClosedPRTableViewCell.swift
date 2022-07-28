//
//  ClosedPRTableViewCell.swift
//  GitHubRepoList
//
//  Created by Sagar Mahindrakar on 27/07/22.
//

import UIKit

class ClosedPRTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var createdAtLabel: UILabel!
    @IBOutlet weak var closedAtLabel: UILabel!
    @IBOutlet weak var backView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backView.layer.cornerRadius = 5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func populate(model:ClosedPR){
        self.titleLabel.text = model.title
        if let createdAt = model.created_at?.toDateString(){
            self.createdAtLabel.text = "Created At: \(createdAt) ago"
        }
        if let number = model.number, let login = model.user?.login, let closedAt = model.closed_at?.toDateString(){
            self.closedAtLabel.text = "#\(number) by \(login) was merged \(closedAt) ago"
        }
        }

    
}
