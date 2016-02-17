//
//  UIViewController+FlashBar.swift
//  FlashBar
//
//  Created by Damian Rzeszot on 17/02/16.
//  Copyright © 2016 Damian Rzeszot. All rights reserved.
//

import UIKit


public extension UINavigationController {

    public var flashBar: FlashBar {
        return find() ?? create()
    }
    
    func create() -> FlashBar {
        let fb = FlashBar()
        view.insertSubview(fb, belowSubview: navigationBar)
        
        
        fb.translatesAutoresizingMaskIntoConstraints = false
        
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[nav]-0-[self]", options: .AlignAllLeft, metrics: nil, views: ["nav": navigationBar, "self":fb]))
        
    
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-0-[self]-0-|", options: .AlignAllTop, metrics: nil, views: ["self": fb]))
        
        fb.height = NSLayoutConstraint(item: fb, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1, constant: 0)
        view.addConstraint(fb.height)
        
        
        fb.hidden = true
        
        return fb
    }
    
    func find() -> FlashBar? {
        return view.subviews.filter { $0 is FlashBar }.first as? FlashBar
    }
    
}
