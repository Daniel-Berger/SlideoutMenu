//
//  SpacerView.swift
//  SlideOutMenu
//
//  Created by dberger1 on 10/5/18.
//  Copyright © 2018 dberger1. All rights reserved.
//

import UIKit

class SpacerView: UIView {
    
    var space: CGFloat
    
    override var intrinsicContentSize: CGSize {
        return .init(width: space, height: space)
    }
    
    init(space: CGFloat) {
        self.space = space
        super.init(frame: .zero)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
