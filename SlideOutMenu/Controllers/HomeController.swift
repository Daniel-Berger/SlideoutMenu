//
//  HomeController.swift
//  SlideOutMenu
//
//  Created by dberger1 on 9/27/18.
//  Copyright © 2018 dberger1. All rights reserved.
//

import UIKit

class HomeController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.backgroundColor = UIColor.cyan
        setupNavigationItem()
    }
    
    fileprivate func setupNavigationItem() {
        navigationItem.title = "Home"
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Open", style: .plain, target: self, action: #selector(handleOpen))
        navigationItem.leftBarButtonItem?.tintColor = UIColor.red
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Hide", style: .plain, target: self, action: #selector(handleHide))
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cellId")
        cell.textLabel?.text = "Row: \(indexPath.row)"
        return cell
    }
    
    let menuController = MenuTableViewController()
    fileprivate let menuWidth: CGFloat = 300
    
    @objc func handleOpen() {
        print("Opening menu...")
        menuController.view.frame = CGRect(x: -menuWidth, y: 0, width: 300, height: self.view.frame.height)
        let mainWindow = UIApplication.shared.keyWindow
        mainWindow?.addSubview(menuController.view)
        
        UIView.animate(withDuration: 0.5,
                       delay: 0,
                       usingSpringWithDamping: 1,
                       initialSpringVelocity: 1,
                       options: .curveEaseOut,
                       animations: {
                        self.menuController.view.transform = CGAffineTransform(translationX: self.menuWidth, y: 0)
        },
                       completion: nil)
        addChild(menuController)

    }
    
    @objc func handleHide() {
        print("Hiding menu...")
        
        UIView.animate(withDuration: 0.5,
                       delay: 0,
                       usingSpringWithDamping: 1,
                       initialSpringVelocity: 1,
                       options: .curveEaseOut,
                       animations: {
                        self.menuController.view.transform = .identity
        },
                       completion: nil)
//        menuController.view.removeFromSuperview()
//        menuController.removeFromParent()
    }

}

