//
//  ViewController.swift
//  CircularLoadingView
//
//  Created by Admin on 12/07/22.
//

import UIKit

class ViewController: UIViewController {
    
    let spinningCircleView = SpinningCircleView()
    var toggel : Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        cofigCircleView()
    }
    
    func cofigCircleView() {
        spinningCircleView.frame = CGRect(x: view.center.x-50, y:350, width: 100, height: 100)
        view.addSubview(spinningCircleView)
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(viewTapped)))
    }
    
    @objc func viewTapped() {
        self.toggel = !self.toggel
        if toggel {
            spinningCircleView.animateRotation(isRotate: true)
        } else {
            spinningCircleView.animateRotation(isRotate: false)
        }
    }
 
    
    
}

