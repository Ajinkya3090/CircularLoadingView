//
//  SpinningCircleView.swift
//  CircularLoadingView
//
//  Created by Admin on 12/07/22.
//

import UIKit

class SpinningCircleView : UIView {
    
    let spinningCircle = CAShapeLayer()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        config()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func config() {
        frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        
        let rect = self.bounds
        let circularPath = UIBezierPath(ovalIn: rect)
        
        spinningCircle.path = circularPath.cgPath
        spinningCircle.fillColor = UIColor.clear.cgColor
        spinningCircle.strokeColor = UIColor.systemRed.cgColor
        spinningCircle.lineWidth = 10
        spinningCircle.strokeEnd = 0.85
        spinningCircle.lineCap = .round
        
        self.layer.addSublayer(spinningCircle)
    }
    
    func animateRotation(isRotate : Bool) {
        var rotationAnimation : RotationAnimation
        if isRotate {
             rotationAnimation = RotationAnimation(
                direction: .z,
                fromValue: 0,
                toValue: CGFloat.pi * 2,
                duration: 1,
                repeatCount: .greatestFiniteMagnitude
            )
            self.layer.add(rotationAnimation, forKey: nil)
        } else {
            self.transform = CGAffineTransform(rotationAngle: 0)
            self.layer.removeAllAnimations()
        }

    }
}
