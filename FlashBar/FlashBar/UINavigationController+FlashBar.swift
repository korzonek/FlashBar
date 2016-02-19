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
        return findFlashBar() ?? createFlashBar()
    }
    

    // MARK: - Helpers
    
    private func findFlashBar() -> FlashBar? {
        return view.subviews.filter { $0 is FlashBar }.first as? FlashBar
    }
    
    private func createFlashBar() -> FlashBar {
        let flashBar = FlashBar()
        
        view.insertSubview(flashBar, belowSubview: navigationBar)
        flashBar.hidden = true
        
        return flashBar
    }

}
