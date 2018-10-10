//
//  BookmarksController.swift
//  SlideOutMenu
//
//  Created by dberger1 on 10/9/18.
//  Copyright © 2018 dberger1. All rights reserved.
//

import UIKit

class BookmarksController: UITableViewController {

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = ("Bookmarks: \(indexPath.row)")
        return cell
    }
}
