//
//  SecondViewController.swift
//  MyBreakPoint
//
//  Created by Ziyad almohisen on 01/05/2019.
//  Copyright © 2019 Ziyad almohisen. All rights reserved.
//

import UIKit

class GroupsVC: UIViewController {

    
    //Outlets
    @IBOutlet weak var groupsTableview: UITableView!
    
    var groupsArray = [Group]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        groupsTableview.delegate = self
        groupsTableview.dataSource = self
        groupsTableview.reloadData()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
       
        DataService.instance.REF_GROUPS.observe(.value) { (snapshot) in
            DataService.instance.getAllGroups { (returnedGroupsArray) in
                self.groupsArray = returnedGroupsArray
                self.groupsTableview.reloadData()
        }
        
        }
    }
    
    


}


extension GroupsVC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groupsArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = groupsTableview.dequeueReusableCell(withIdentifier: "GroupCell") as? GroupCell else { return UITableViewCell() }
        let group = groupsArray[indexPath.row]
        cell.configureCell(title: group.groupTitle, Description: group.groupDesc, memberCount: group.memberCount)
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let groupFeedVC = storyboard?.instantiateViewController(withIdentifier: "GroupFeedVC") as? GroupFeedVC else { return }
        groupFeedVC.initData(forGroup: groupsArray[indexPath.row])
        presentDetail(groupFeedVC)
        
    }
}

