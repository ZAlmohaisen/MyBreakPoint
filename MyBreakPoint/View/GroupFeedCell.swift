//
//  GroupFeedCell.swift
//  MyBreakPoint
//
//  Created by Ziyad almohisen on 17/06/2019.
//  Copyright © 2019 Ziyad almohisen. All rights reserved.
//

import UIKit

class GroupFeedCell: UITableViewCell {

   //Outlets
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var contentLbl: UILabel!
    
    
    func configureCell(profileImage: UIImage, email: String, content: String) {
        self.profileImg.image = profileImage
        self.emailLbl.text = email
        self.contentLbl.text = content
    }

}
