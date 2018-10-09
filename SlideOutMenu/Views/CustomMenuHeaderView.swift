//
//  CustomMenuHeaderView.swift
//  SlideOutMenu
//
//  Created by dberger1 on 10/5/18.
//  Copyright © 2018 dberger1. All rights reserved.
//

import UIKit

class CustomMenuHeaderView: UIView {
    
    let nameLabel = UILabel()
    let userNameLabel = UILabel()
    let statsLabel = UILabel()
    let profileImageView = ProfileImageView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setupComponentsProps()
        setupStackView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func setupComponentsProps() {
        nameLabel.text = "Daniel Berger"
        nameLabel.font = UIFont.systemFont(ofSize: 20, weight: .heavy)
        userNameLabel.text = "@danielberger"
        statsLabel.text = "one, two, three"
        profileImageView.image = UIImage(named: "newYorkCity")
        profileImageView.contentMode = .scaleAspectFit
        profileImageView.layer.cornerRadius = 48/2
        profileImageView.clipsToBounds = true
        profileImageView.backgroundColor = .blue
        
        setupStatsAttributedText()
    }
    
    fileprivate func setupStackView() {
        let arrangedSubviews = [
//            UIView(),
            UIStackView(arrangedSubviews: [profileImageView, UIView()]),
            nameLabel,
            SpacerView(space: 16),
            userNameLabel,
            statsLabel
        ]
        let stackView = UIStackView(arrangedSubviews: arrangedSubviews)
        stackView.axis = .vertical
        stackView.spacing = 4
        addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.layoutMargins = UIEdgeInsets(top: 24, left: 24, bottom: 24, right: 24)
    }
    
    fileprivate func setupStatsAttributedText() {
        statsLabel.font = UIFont.systemFont(ofSize: 16)
        
        let attributedText = NSMutableAttributedString(string: "42 ", attributes: [.font: UIFont.systemFont(ofSize: 18, weight: .medium)])
        attributedText.append(NSAttributedString(string: "Following ", attributes: [.foregroundColor: UIColor.black]))
        attributedText.append(NSAttributedString(string: "7091 ", attributes: [.font: UIFont.systemFont(ofSize: 18, weight: .medium)]))
        attributedText.append(NSAttributedString(string: "Followers", attributes: [.foregroundColor: UIColor.black]))
        
        statsLabel.attributedText = attributedText
        
    }
    
}
