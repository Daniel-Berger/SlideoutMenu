//
//  MenuController.swift
//  SlideOutMenu
//
//  Created by dberger1 on 9/28/18.
//  Copyright © 2018 dberger1. All rights reserved.
//

import UIKit

struct MenuItem {
    let icon: UIImage
    let title: String
}

extension MenuController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let baseSlidingVC = BaseSlidingViewController()
//        baseSlidingVC.closeMenu()
        
        let slidingController = UIApplication.shared.keyWindow?.rootViewController as? BaseSlidingViewController
        slidingController?.didSelectMenuItem(indexPath: indexPath)
        
    }
}

class MenuController: UITableViewController {
    
    let menuItems = [
        MenuItem(icon: UIImage(named: "profile")!, title: "Home"),
        MenuItem(icon: #imageLiteral(resourceName: "lists"), title: "Lists"),
        MenuItem(icon: #imageLiteral(resourceName: "bookmarks"), title: "Bookmarks"),
        MenuItem(icon: #imageLiteral(resourceName: "moments"), title: "Moments")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.separatorStyle = .none
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let v = CustomMenuHeaderView()
        return v
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = MenuItemCell(style: .default, reuseIdentifier: "cellId")
        
        let menuItem = menuItems[indexPath.row]
        cell.iconImageView.image = menuItem.icon
        cell.titleLabel.text = menuItem.title
        return cell
    }
    
   
    
}
