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
    
    let colors: [UIColor] = [ .redColor(), .greenColor(), .yellowColor() ]
    
    var flash: FlashBar {
        return navigationController!.flashBar
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

}
