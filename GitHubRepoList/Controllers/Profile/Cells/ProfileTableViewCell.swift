//
//  ProfileTableViewCell.swift
//  GitHubRepoList
//
//  Created by Sagar Mahindrakar on 17/07/22.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {

    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var idLabel: UILabel!
    
    @IBOutlet weak var followersLabel: UILabel!
    
    @IBOutlet weak var followingLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func populate(model:ProfileInfoModel){
        self.nameLabel.text = model.name
        self.idLabel.text = model.login
        if let followers = model.followers{
            self.followersLabel.text = "Followers: \(followers)"
        }
        if let following = model.following{
            self.followingLabel.text = "Following: \(following)"
        }
        self.profileImage.url(Constants.url.imageurl)
    }
    
}
