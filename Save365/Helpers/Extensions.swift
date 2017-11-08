//
//  Extensions.swift
//  Save365
//
//  Created by Jonathan Yantz on 11/7/17.
//  Copyright © 2017 Jonathan Yantz. All rights reserved.
//

import UIKit

// Easy way to make custom UIColor colors.
extension UIColor {
    
    static func rgba(r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat) -> UIColor {
        return UIColor.init(red: r/255, green: g/255, blue: b/255, alpha: a/1)
    }
    
}

// Easy way to create constraints for one or more UIViews.
extension UIView {
    
    func addConstraintsWithFormat(format: String, views: UIView...) {
        var viewsDictionary = [String: UIView]()
        
        for (index, view) in views.enumerated() {
            let key = "v\(index)"
            view.translatesAutoresizingMaskIntoConstraints = false
            viewsDictionary[key] = view
        }
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutFormatOptions(), metrics: nil, views: viewsDictionary))
    }
    
}
