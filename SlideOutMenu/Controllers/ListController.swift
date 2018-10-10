//
//  ListController.swift
//  SlideOutMenu
//
//  Created by dberger1 on 10/8/18.
//  Copyright © 2018 dberger1. All rights reserved.
//

import UIKit

class ListController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "List"
        navigationController?.navigationBar.prefersLargeTitles = true
//        navigationController?.navigationBar.center =

        let label = UILabel()
        label.text = "Hello ListController"
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.frame = view.frame
        label.textAlignment = .center
        view.addSubview(label)
    }

}
