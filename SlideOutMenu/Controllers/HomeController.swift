//
//  HomeController.swift
//  SlideOutMenu
//
//  Created by dberger1 on 9/27/18.
//  Copyright © 2018 dberger1. All rights reserved.
//

import UIKit

class HomeController: UITableViewController {
    
//    let menuController = MenuController()
//    fileprivate let menuWidth: CGFloat = 300
//    fileprivate var isMenuOpen = false
//    fileprivate let velocityOpenThreshold: CGFloat = 500
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.backgroundColor = UIColor.cyan
        setupNavigationItem()
        
        // commented out setupPanGesture to allow scrolling
//        setupPanGesture()
//        setupDarkCoverView()
    }
    
    fileprivate func setupNavigationItem() {
        navigationItem.title = "Home"
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Open", style: .plain, target: self, action: #selector(handleOpen))
        navigationItem.leftBarButtonItem?.tintColor = UIColor.red
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Hide", style: .plain, target: self, action: #selector(handleHide))
    }
    
//    fileprivate func setupMenuController() {
//        menuController.view.frame = CGRect(x: -menuWidth, y: 0, width: 300, height: self.view.frame.height)
//        let mainWindow = UIApplication.shared.keyWindow
//        mainWindow?.addSubview(menuController.view)
//        addChild(menuController)
//    }
    
//    fileprivate func setupPanGesture() {
//        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(handlePan))
////        panGesture.delegate = self
//        view.addGestureRecognizer(panGesture)
//    }
    
//    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
//        // issue #1
//        return true
//    }
    
//    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
//        // issue #2- manually calculate new frames when view resizes
//    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cellId")
        cell.textLabel?.text = "Row: \(indexPath.row)"
        return cell
    }
    
//    fileprivate func performAnimations(transform: CGAffineTransform) {
//        UIView.animate(withDuration: 0.5,
//                       delay: 0,
//                       usingSpringWithDamping: 1,
//                       initialSpringVelocity: 1,
//                       options: .curveEaseOut,
//                       animations: {
//                        self.menuController.view.transform = transform
//                        self.navigationController?.view.transform = transform
//                        self.darkCoverView.transform = transform
//
////                        if transform == .identity {
////                            self.darkCoverView.alpha = 0
////                        } else {
////                            self.darkCoverView.alpha = 1
////                        }
//                        self.darkCoverView.alpha = transform == .identity ? 0 : 1
//        },
//                       completion: nil)
//    }
    
//    let darkCoverView = UIView()
//
//    fileprivate func setupDarkCoverView() {
//        darkCoverView.alpha = 0
//        darkCoverView.backgroundColor = UIColor(white: 0, alpha: 0.8)
//        darkCoverView.isUserInteractionEnabled = false
//        let mainWindow = UIApplication.shared.keyWindow
//        mainWindow?.addSubview(darkCoverView)
//        darkCoverView.frame = mainWindow?.frame ?? .zero
//    }
    
    @objc func handleOpen() {
//        isMenuOpen = true
//        performAnimations(transform: CGAffineTransform(translationX: self.menuWidth, y: 0))
        (UIApplication.shared.keyWindow?.rootViewController as? BaseSlidingViewController)?.openMenu()
    }
    
    @objc func handleHide() {
//        isMenuOpen = false
//        performAnimations(transform: .identity)
        (UIApplication.shared.keyWindow?.rootViewController as? BaseSlidingViewController)?.closeMenu()
    }
    
//    @objc func handlePan(gesture: UIPanGestureRecognizer) {
//        let translation = gesture.translation(in: view)
//        if gesture.state == .changed {
//            var x = translation.x
//
//            if isMenuOpen {
//                // x += 300
//                x += menuWidth
//            }
//
//            x = min(menuWidth, x)
//            x = max(0, x)
//
//            let transform = CGAffineTransform(translationX: x, y: 0)
//            menuController.view.transform = transform
//            navigationController?.view.transform = transform
//            darkCoverView.transform = transform
//            darkCoverView.alpha = x / menuWidth
//
//        } else if gesture.state == .ended {
//            handleEnded(gesture: gesture)
//        }
//    }
    
//    fileprivate func handleEnded(gesture: UIPanGestureRecognizer) {
//        let translation = gesture.translation(in: view)
//
//        let velocity = gesture.velocity(in: view)
////        print("Velocity: ", velocity.x)
//        if isMenuOpen {
//            if abs(velocity.x) > velocityOpenThreshold {
//                handleHide()
//                return
//            }
//            if abs(translation.x) < menuWidth / 2 {
//                handleOpen()
//            } else {
//                handleHide()
//            }
//        } else {
//            if velocity.x > velocityOpenThreshold {
//                handleOpen()
//                return
//            }
//
//            if translation.x < menuWidth/2 {
//                handleHide()
//            } else {
//                handleOpen()
//            }
//        }
//    }
    
}

