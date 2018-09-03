//
//  DrawnButton.swift
//  Language Practice
//
//  Created by Yono Mittlefehldt on 2018-08-26.
//  Copyright © 2018 toojuice, LLC. All rights reserved.
//

import UIKit

@IBDesignable
class DrawnButton: UIButton {
    
    static let defaultColor = UIColor(red: 52.0 / 255, green: 118.0 / 255, blue: 221.0 / 255, alpha: 1.000)
    
    @IBInspectable var buttonColor: UIColor = defaultColor
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}

class PlayButton: DrawnButton {
    
    override func draw(_ rect: CGRect) {
        Buttons.drawPlay(frame: rect, color: buttonColor)
    }
}

@IBDesignable
class RecordButton: DrawnButton {
    
    @IBInspectable var recordingButtonColor: UIColor = UIColor(red: 164.0 / 255, green: 186.0 / 255, blue: 221.0 / 255, alpha: 1.000)
    
    var isRecording: Bool = false {
        didSet {
            setNeedsDisplay()
        }
    }
    
    override func draw(_ rect: CGRect) {
        Buttons.drawRecord(frame: rect, color: isRecording ? recordingButtonColor : buttonColor)
    }
}
