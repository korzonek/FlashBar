//
//  FlashBar.swift
//  FlashBar
//
//  Created by Damian Rzeszot on 17/02/16.
//  Copyright © 2016 Damian Rzeszot. All rights reserved.
//

import UIKit


public class FlashBar: UIView {

    private var height: NSLayoutConstraint!

    override public var hidden: Bool {
        get {
            return height.constant == 0
        }
        set {
            height.constant = newValue ? 0 : 25
        }
    }
    
    public func setHidden(hide: Bool, animated animate: Bool) {
        let duration = Double(UINavigationControllerHideShowBarDuration)

        if animate {
            layoutIfNeeded()
        }
        
        self.hidden = hide
        
        if animate {
            UIView.animateWithDuration(duration) {
                self.superview?.layoutIfNeeded()
            }
        }
    }
    
    override public func didMoveToSuperview() {
        clipsToBounds = true
        translatesAutoresizingMaskIntoConstraints = false

        createConstraints()
    }
    
    func createConstraints() {
        let container = superview!
        let navigationBar = container.subviews.filter { $0 is UINavigationBar }.first!
        
        let views = ["nav": navigationBar, "flash": self]
        
        
        container.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[nav]-0-[flash]", options: .AlignAllLeft, metrics: nil, views: views))
        
        container.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-0-[flash]-0-|", options: .AlignAllTop, metrics: nil, views: views))

        height = NSLayoutConstraint(item: self, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1, constant: 0)

        container.addConstraint(height)
    }

}
