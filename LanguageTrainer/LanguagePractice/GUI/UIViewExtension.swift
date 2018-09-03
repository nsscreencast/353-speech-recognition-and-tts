//
//  UIViewExtension.swift
//  Language Practice
//
//  Created by Yono Mittlefehldt on 2018-08-26.
//  Copyright © 2018 toojuice, LLC. All rights reserved.
//

import UIKit

extension UIView {
    
    @IBInspectable
    var cornerRadius: CGFloat {
        
        get {
            return layer.cornerRadius
        }
        
        set {
            layer.cornerRadius = newValue
            clipsToBounds = newValue != 0.0
        }
    }
}
