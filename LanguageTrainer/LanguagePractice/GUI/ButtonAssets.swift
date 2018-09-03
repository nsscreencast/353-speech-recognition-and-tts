//
//  Buttons.swift
//  Language Practice
//
//  Created by Yono Mittlefehldt on 2018-08-26.
//  Copyright © 2018 toojuice. All rights reserved.
//
//  Generated by PaintCode
//  http://www.paintcodeapp.com
//



import UIKit

public class Buttons : NSObject {

    //// Drawing Methods

    @objc dynamic public class func drawPlay(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 375, height: 375), color: UIColor = UIColor(red: 0.204, green: 0.461, blue: 0.868, alpha: 1.000), resizing: ResizingBehavior = .aspectFit) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 375, height: 375), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 375, y: resizedFrame.height / 375)

        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 210.85, y: 150.02))
        bezierPath.addLine(to: CGPoint(x: 205.52, y: 155.3))
        bezierPath.addLine(to: CGPoint(x: 208.15, y: 157.96))
        bezierPath.addCurve(to: CGPoint(x: 208.15, y: 217.04), controlPoint1: CGPoint(x: 224.28, y: 174.27), controlPoint2: CGPoint(x: 224.28, y: 200.73))
        bezierPath.addLine(to: CGPoint(x: 205.52, y: 219.7))
        bezierPath.addLine(to: CGPoint(x: 210.85, y: 224.98))
        bezierPath.addLine(to: CGPoint(x: 213.49, y: 222.31))
        bezierPath.addCurve(to: CGPoint(x: 213.49, y: 152.69), controlPoint1: CGPoint(x: 232.5, y: 203.08), controlPoint2: CGPoint(x: 232.5, y: 171.92))
        bezierPath.addLine(to: CGPoint(x: 210.85, y: 150.02))
        bezierPath.close()
        bezierPath.move(to: CGPoint(x: 235.57, y: 140.12))
        bezierPath.addLine(to: CGPoint(x: 230.27, y: 145.43))
        bezierPath.addLine(to: CGPoint(x: 232.92, y: 148.08))
        bezierPath.addCurve(to: CGPoint(x: 232.92, y: 226.92), controlPoint1: CGPoint(x: 254.69, y: 169.85), controlPoint2: CGPoint(x: 254.69, y: 205.15))
        bezierPath.addLine(to: CGPoint(x: 230.27, y: 229.57))
        bezierPath.addLine(to: CGPoint(x: 235.57, y: 234.88))
        bezierPath.addLine(to: CGPoint(x: 238.22, y: 232.22))
        bezierPath.addCurve(to: CGPoint(x: 238.22, y: 142.78), controlPoint1: CGPoint(x: 262.93, y: 207.52), controlPoint2: CGPoint(x: 262.93, y: 167.48))
        bezierPath.addLine(to: CGPoint(x: 235.57, y: 140.12))
        bezierPath.close()
        bezierPath.move(to: CGPoint(x: 259.47, y: 130.22))
        bezierPath.addLine(to: CGPoint(x: 254.17, y: 135.53))
        bezierPath.addLine(to: CGPoint(x: 256.82, y: 138.18))
        bezierPath.addCurve(to: CGPoint(x: 256.82, y: 236.82), controlPoint1: CGPoint(x: 284.06, y: 165.42), controlPoint2: CGPoint(x: 284.06, y: 209.58))
        bezierPath.addLine(to: CGPoint(x: 254.17, y: 239.47))
        bezierPath.addLine(to: CGPoint(x: 259.47, y: 244.78))
        bezierPath.addLine(to: CGPoint(x: 262.12, y: 242.12))
        bezierPath.addCurve(to: CGPoint(x: 262.12, y: 132.88), controlPoint1: CGPoint(x: 292.29, y: 211.96), controlPoint2: CGPoint(x: 292.29, y: 163.04))
        bezierPath.addLine(to: CGPoint(x: 259.47, y: 130.22))
        bezierPath.close()
        bezierPath.move(to: CGPoint(x: 184, y: 114))
        bezierPath.addLine(to: CGPoint(x: 139.37, y: 150.45))
        bezierPath.addLine(to: CGPoint(x: 94, y: 150.45))
        bezierPath.addLine(to: CGPoint(x: 94, y: 223.95))
        bezierPath.addLine(to: CGPoint(x: 138.63, y: 223.95))
        bezierPath.addLine(to: CGPoint(x: 184, y: 261))
        bezierPath.addLine(to: CGPoint(x: 184, y: 114))
        bezierPath.close()
        bezierPath.move(to: CGPoint(x: 375, y: 187.5))
        bezierPath.addCurve(to: CGPoint(x: 187.5, y: 375), controlPoint1: CGPoint(x: 375, y: 291.05), controlPoint2: CGPoint(x: 291.05, y: 375))
        bezierPath.addCurve(to: CGPoint(x: 0, y: 187.5), controlPoint1: CGPoint(x: 83.95, y: 375), controlPoint2: CGPoint(x: -0, y: 291.05))
        bezierPath.addCurve(to: CGPoint(x: 74.6, y: 37.79), controlPoint1: CGPoint(x: 0, y: 126.34), controlPoint2: CGPoint(x: 29.29, y: 72.01))
        bezierPath.addCurve(to: CGPoint(x: 187.5, y: 0), controlPoint1: CGPoint(x: 106.01, y: 14.07), controlPoint2: CGPoint(x: 145.11, y: -0))
        bezierPath.addCurve(to: CGPoint(x: 375, y: 187.5), controlPoint1: CGPoint(x: 291.05, y: 0), controlPoint2: CGPoint(x: 375, y: 83.95))
        bezierPath.close()
        color.setFill()
        bezierPath.fill()
        
        context.restoreGState()

    }

    @objc dynamic public class func drawRecord(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 375, height: 375), color: UIColor = UIColor(red: 0.204, green: 0.461, blue: 0.868, alpha: 1.000), resizing: ResizingBehavior = .aspectFit) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 375, height: 375), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 375, y: resizedFrame.height / 375)


        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 187, y: 92))
        bezierPath.addCurve(to: CGPoint(x: 178.26, y: 93.1), controlPoint1: CGPoint(x: 183.98, y: 92), controlPoint2: CGPoint(x: 181.05, y: 92.38))
        bezierPath.addCurve(to: CGPoint(x: 152, y: 127), controlPoint1: CGPoint(x: 163.16, y: 96.98), controlPoint2: CGPoint(x: 152, y: 110.69))
        bezierPath.addCurve(to: CGPoint(x: 152, y: 135.19), controlPoint1: CGPoint(x: 152, y: 127), controlPoint2: CGPoint(x: 152, y: 130.18))
        bezierPath.addCurve(to: CGPoint(x: 152, y: 197), controlPoint1: CGPoint(x: 152, y: 153.68), controlPoint2: CGPoint(x: 152, y: 197))
        bezierPath.addCurve(to: CGPoint(x: 187, y: 232), controlPoint1: CGPoint(x: 152, y: 216.33), controlPoint2: CGPoint(x: 167.67, y: 232))
        bezierPath.addCurve(to: CGPoint(x: 222, y: 197), controlPoint1: CGPoint(x: 206.33, y: 232), controlPoint2: CGPoint(x: 222, y: 216.33))
        bezierPath.addLine(to: CGPoint(x: 222, y: 127))
        bezierPath.addCurve(to: CGPoint(x: 187, y: 92), controlPoint1: CGPoint(x: 222, y: 107.67), controlPoint2: CGPoint(x: 206.33, y: 92))
        bezierPath.close()
        bezierPath.move(to: CGPoint(x: 141, y: 170))
        bezierPath.addLine(to: CGPoint(x: 133, y: 170))
        bezierPath.addCurve(to: CGPoint(x: 133, y: 197), controlPoint1: CGPoint(x: 133, y: 185.35), controlPoint2: CGPoint(x: 133, y: 197))
        bezierPath.addCurve(to: CGPoint(x: 183, y: 250.85), controlPoint1: CGPoint(x: 133, y: 225.48), controlPoint2: CGPoint(x: 155.04, y: 248.81))
        bezierPath.addCurve(to: CGPoint(x: 183, y: 274), controlPoint1: CGPoint(x: 183, y: 258.31), controlPoint2: CGPoint(x: 183, y: 274))
        bezierPath.addLine(to: CGPoint(x: 159, y: 274))
        bezierPath.addLine(to: CGPoint(x: 159, y: 283))
        bezierPath.addLine(to: CGPoint(x: 215, y: 283))
        bezierPath.addLine(to: CGPoint(x: 215, y: 274))
        bezierPath.addLine(to: CGPoint(x: 191, y: 274))
        bezierPath.addCurve(to: CGPoint(x: 191, y: 250.85), controlPoint1: CGPoint(x: 191, y: 274), controlPoint2: CGPoint(x: 191, y: 258.31))
        bezierPath.addCurve(to: CGPoint(x: 241, y: 197), controlPoint1: CGPoint(x: 218.96, y: 248.81), controlPoint2: CGPoint(x: 241, y: 225.48))
        bezierPath.addCurve(to: CGPoint(x: 241, y: 170), controlPoint1: CGPoint(x: 241, y: 197), controlPoint2: CGPoint(x: 241, y: 185.35))
        bezierPath.addCurve(to: CGPoint(x: 239.95, y: 170), controlPoint1: CGPoint(x: 241, y: 170), controlPoint2: CGPoint(x: 240.59, y: 170))
        bezierPath.addCurve(to: CGPoint(x: 233, y: 170), controlPoint1: CGPoint(x: 237.78, y: 170), controlPoint2: CGPoint(x: 233, y: 170))
        bezierPath.addCurve(to: CGPoint(x: 233, y: 188.68), controlPoint1: CGPoint(x: 233, y: 177.37), controlPoint2: CGPoint(x: 233, y: 183.9))
        bezierPath.addCurve(to: CGPoint(x: 233, y: 197), controlPoint1: CGPoint(x: 233, y: 193.86), controlPoint2: CGPoint(x: 233, y: 197))
        bezierPath.addCurve(to: CGPoint(x: 187, y: 243), controlPoint1: CGPoint(x: 233, y: 222.41), controlPoint2: CGPoint(x: 212.41, y: 243))
        bezierPath.addCurve(to: CGPoint(x: 141, y: 196.97), controlPoint1: CGPoint(x: 161.59, y: 243), controlPoint2: CGPoint(x: 141, y: 222.41))
        bezierPath.addCurve(to: CGPoint(x: 141, y: 170), controlPoint1: CGPoint(x: 141, y: 196.27), controlPoint2: CGPoint(x: 141, y: 184.87))
        bezierPath.close()
        bezierPath.move(to: CGPoint(x: 375, y: 187.5))
        bezierPath.addCurve(to: CGPoint(x: 187.5, y: 375), controlPoint1: CGPoint(x: 375, y: 291.05), controlPoint2: CGPoint(x: 291.05, y: 375))
        bezierPath.addCurve(to: CGPoint(x: 0, y: 187.5), controlPoint1: CGPoint(x: 83.95, y: 375), controlPoint2: CGPoint(x: -0, y: 291.05))
        bezierPath.addCurve(to: CGPoint(x: 74.6, y: 37.79), controlPoint1: CGPoint(x: 0, y: 126.34), controlPoint2: CGPoint(x: 29.29, y: 72.01))
        bezierPath.addCurve(to: CGPoint(x: 187.5, y: 0), controlPoint1: CGPoint(x: 106.01, y: 14.07), controlPoint2: CGPoint(x: 145.11, y: -0))
        bezierPath.addCurve(to: CGPoint(x: 375, y: 187.5), controlPoint1: CGPoint(x: 291.05, y: 0), controlPoint2: CGPoint(x: 375, y: 83.95))
        bezierPath.close()
        color.setFill()
        bezierPath.fill()
        
        context.restoreGState()

    }




    @objc(ButtonsResizingBehavior)
    public enum ResizingBehavior: Int {
        case aspectFit /// The content is proportionally resized to fit into the target rectangle.
        case aspectFill /// The content is proportionally resized to completely fill the target rectangle.
        case stretch /// The content is stretched to match the entire target rectangle.
        case center /// The content is centered in the target rectangle, but it is NOT resized.

        public func apply(rect: CGRect, target: CGRect) -> CGRect {
            if rect == target || target == CGRect.zero {
                return rect
            }

            var scales = CGSize.zero
            scales.width = abs(target.width / rect.width)
            scales.height = abs(target.height / rect.height)

            switch self {
                case .aspectFit:
                    scales.width = min(scales.width, scales.height)
                    scales.height = scales.width
                case .aspectFill:
                    scales.width = max(scales.width, scales.height)
                    scales.height = scales.width
                case .stretch:
                    break
                case .center:
                    scales.width = 1
                    scales.height = 1
            }

            var result = rect.standardized
            result.size.width *= scales.width
            result.size.height *= scales.height
            result.origin.x = target.minX + (target.width - result.width) / 2
            result.origin.y = target.minY + (target.height - result.height) / 2
            return result
        }
    }
}
