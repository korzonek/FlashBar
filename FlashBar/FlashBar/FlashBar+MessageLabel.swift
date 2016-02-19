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
        
        let attributes: [NSLayoutAttribute] = [.CenterX, .CenterY]
        for attribute in attributes {
            self.addConstraint(NSLayoutConstraint(item: label, attribute: attribute, relatedBy: .Equal, toItem: self, attribute: attribute, multiplier: 1, constant: 0))
        }

        return label
    }

}
