//
//  AppDelegate.swift
//  Sample
//
//  Created by Damian Rzeszot on 15/02/16.
//  Copyright © 2016 Damian Rzeszot. All rights reserved.
//

import UIKit


extension Array {
    var sample: Element? {
        let index = Int(arc4random_uniform(UInt32(count)))
        return self[index]
    }
}

extension UIColor {
    public class func hexColor(hex: String) -> UIColor {
        if hex.characters.count != 6 {
            return UIColor.grayColor()
        }
        
        var rgb: UInt32 = 0
        NSScanner(string: hex).scanHexInt(&rgb)
        
        let r = Double((rgb & 0xff0000) >> 16) / 255.0
        let g = Double((rgb & 0x00ff00) >>  8) / 255.0
        let b = Double((rgb & 0x0000ff) >>  0) / 255.0
        
        return UIColor(red: CGFloat(r), green: CGFloat(g), blue: CGFloat(b), alpha: 1.0)
    }
}



@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        return true
    }

}

