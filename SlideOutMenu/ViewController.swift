//
//  ViewController.swift
//  SlideOutMenu
//
//  Created by dberger1 on 9/27/18.
//  Copyright © 2018 dberger1. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.backgroundColor = UIColor.lightGray
        setupNavigationItem()
        
    }
    
    fileprivate func setupNavigationItem() {
        navigationItem.title = "Home"
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Open", style: .plain, target: self, action: #selector(handleOpen))
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
    
    
    
    @objc func handleOpen() {
        print("Opening menu...")
    }
    
    @objc func handleHide() {
        print("Hiding menu...")
    }

}

