//
//  GroupCell.swift
//  MyBreakPoint
//
//  Created by Ziyad almohisen on 16/06/2019.
//  Copyright © 2019 Ziyad almohisen. All rights reserved.
//

import UIKit

class GroupCell: UITableViewCell {

    
    //Outlets
    @IBOutlet weak var groupTitleLbl: UILabel!
    @IBOutlet weak var groupDesLbl: UILabel!
    @IBOutlet weak var memberCountLbl: UILabel!
    
    func configureCell(title: String, Description: String, memberCount: Int) {
        self.groupTitleLbl.text = title
        self.groupDesLbl.text = Description
        self.memberCountLbl.text = "\(memberCount) members."
    }
    

}
