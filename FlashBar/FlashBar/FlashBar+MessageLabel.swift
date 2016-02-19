//
//  FlashBar+MessageLabel.swift
//  FlashBar
//
//  Created by Damian Rzeszot on 19/02/16.
//  Copyright © 2016 Damian Rzeszot. All rights reserved.
//

import UIKit


public extension FlashBar {
    
    public var messageLabel: UILabel {
        return findMessageLabel() ?? createMessageLabel()
    }
    
    
    // MARK: - Helpers
    
    private func findMessageLabel() -> UILabel? {
        return subviews.filter { $0 is UILabel }.first as? UILabel
    }
    
    private func createMessageLabel() -> UILabel {
        let label = UILabel()
        
        self.addSubview(label)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        self.addConstraint(NSLayoutConstraint(item: label, attribute: .CenterX, relatedBy: .Equal, toItem: self, attribute: .CenterX, multiplier: 1, constant: 0))
        self.addConstraint(NSLayoutConstraint(item: label, attribute: .CenterY, relatedBy: .Equal, toItem: self, attribute: .CenterY, multiplier: 1, constant: 0))
        
        return label
    }

}
