//
//  ViewController.swift
//  Kindle Clone
//
//  Created by Zackary O'Connor on 8/29/18.
//  Copyright © 2018 Zackary O'Connor. All rights reserved.
//

import UIKit

private let CellId = "CellId"

class BookViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: CellId)
        tableView.tableFooterView = UIView()
    }
}


extension BookViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CellId, for: indexPath)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: CellId)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 86
    }
}









