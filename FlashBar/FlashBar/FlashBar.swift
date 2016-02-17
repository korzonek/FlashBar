//
//  FlashBar.swift
//  FlashBar
//
//  Created by Damian Rzeszot on 17/02/16.
//  Copyright © 2016 Damian Rzeszot. All rights reserved.
//

import UIKit


public class FlashBar: UIView {

    var height: NSLayoutConstraint!
    
    override public var hidden: Bool {
        get {
            return height.constant == 0
        }
        set {
            height.constant = newValue ? 0 : 40
        }
    }
    
    public func setHidden(hide: Bool, animated animate: Bool) {
        if animate {
            layoutIfNeeded()
        }
        
        self.hidden = hide
        
        if animate {
            UIView.animateWithDuration(0.2) {
                self.superview?.layoutIfNeeded()
            }
        }
    }

}
