//
//  ViewController.swift
//  Sample
//
//  Created by Damian Rzeszot on 17/02/16.
//  Copyright © 2016 Damian Rzeszot. All rights reserved.
//

import UIKit
import FlashBar


class ViewController: UIViewController {
    
    let colors: [UIColor] = [ .redColor(), .greenColor(), .yellowColor() ]
    
    var flash: FlashBar {
        return navigationController!.flashBar
    }
    
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        flash.backgroundColor = colors.sample
    }
    
    // MARK: - Actions
    
    @IBAction func toogle(sender: AnyObject) {
        flash.setHidden(!flash.hidden, animated: true)
    }
    
    @IBAction func color(sender: AnyObject) {
        UIView.animateWithDuration(1.0) {
            self.flash.backgroundColor = self.colors.sample
        }
    }

}

