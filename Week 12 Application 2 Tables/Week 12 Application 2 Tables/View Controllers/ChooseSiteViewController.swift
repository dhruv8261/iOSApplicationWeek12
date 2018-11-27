//
//  ChooseSiteViewController.swift
//  Week 12 Application 2 Tables
//
//  Created by Xcode User on 2018-11-27.
//  Copyright © 2018 Sheridancollege. All rights reserved.
//

import UIKit

class ChooseSiteViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var listData = ["Jays", "Leafs", "Raptors", "Marlies", "FC"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listData.count
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableCell = tableView.dequeueReusableCell(withIdentifier: "cell") ?? UITableViewCell()
        
        let rowNum = indexPath.row
        
        tableCell.textLabel?.text = listData[rowNum]
        
        return tableCell
    }
}
