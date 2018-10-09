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
        
//        view.backgroundColor = .white
        
        let label = UILabel()
        label.text = "Hello ListController"
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.frame = view.frame
        label.textAlignment = .center
        view.addSubview(label)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
