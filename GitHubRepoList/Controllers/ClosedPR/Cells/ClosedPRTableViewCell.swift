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
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func populate(model:ClosedPR){
        self.titleLabel.text = model.title
        self.createdAtLabel.text = model.created_at
        if let date = model.closed_at{
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        var dates =  dateFormatter.date(from: date)
            self.closedAtLabel.text = dates?.timeAgoDisplay()
        }
    }

    
}
