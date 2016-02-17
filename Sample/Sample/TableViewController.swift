//
//  TableViewController.swift
//  Sample
//
//  Created by Damian Rzeszot on 17/02/16.
//  Copyright © 2016 Damian Rzeszot. All rights reserved.
//

import UIKit
import FlashBar


class TableViewController: UITableViewController {
    
    var flash: FlashBar {
        return navigationController!.flashBar
    }
    
    func flashMessage(text: String) {
        if !flash.hidden {
            return
        }
        
        for v in flash.subviews {
            v.removeFromSuperview()
        }

        let label = UILabel()
        label.text = text
        label.textColor = .whiteColor()
        label.font = .systemFontOfSize(12)
        
        flash.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        flash.addConstraint(NSLayoutConstraint(item: label, attribute: .CenterX, relatedBy: .Equal, toItem: flash, attribute: .CenterX, multiplier: 1, constant: 0))
        flash.addConstraint(NSLayoutConstraint(item: label, attribute: .CenterY, relatedBy: .Equal, toItem: flash, attribute: .CenterY, multiplier: 1, constant: 0))
        
        flash.setHidden(false, animated: true)
    }

    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        flash.backgroundColor = .redColor()
    }
    
    // MARK: - Actions
    
    @IBAction func toogle(sender: AnyObject) {
        flash.setHidden(!flash.hidden, animated: true)
    }
    
    @IBAction func color(sender: AnyObject) {
        flashMessage("Lorem ipsum est minorum")
    }

}
