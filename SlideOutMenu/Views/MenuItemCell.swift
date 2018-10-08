//
//  MenuItemCell.swift
//  SlideOutMenu
//
//  Created by dberger1 on 10/8/18.
//  Copyright © 2018 dberger1. All rights reserved.
//

import UIKit

class IconIamgeView: UIImageView {
    override var intrinsicContentSize: CGSize {
        return .init(width: 44, height: 44)
    }
}

class MenuItemCell: UITableViewCell {
    
    let iconImageView: IconIamgeView = {
        let iv = IconIamgeView()
        iv.contentMode = .scaleAspectFit
        iv.image = #imageLiteral(resourceName: "moments")
        return iv
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        let stackView = UIStackView(arrangedSubviews: [iconImageView, titleLabel, UIView()])
        self.addSubview(stackView)
        stackView.spacing = 12
        titleLabel.text = "Hello world"
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        // does this need to be below addSubview?
        // review three steps to create programmatic constraints
        // implement material design
        stackView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        
        stackView.isLayoutMarginsRelativeArrangement = true
        // play with these numbers
        stackView.layoutMargins = UIEdgeInsets(top: 8, left: 12, bottom: 8, right: 12)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
