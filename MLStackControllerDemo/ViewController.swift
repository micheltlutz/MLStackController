//
//  ViewController.swift
//  MLStackControllerDemo
//
//  Created by Michel Anderson Lutz Teixeira on 28/05/19.
//  Copyright © 2019 micheltlutz. All rights reserved.
//

import UIKit
import MLStackController

class ViewController: UIViewController {
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
     var presentControllerButton = UIButton.init(type: UIButton.ButtonType.system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.view.backgroundColor = UIColor.white
        self.presentControllerButton.setTitle("Show ViewController", for: .normal)
        self.presentControllerButton.addTarget(self, action: #selector(self.openStack), for: .touchUpInside)
        self.presentControllerButton.sizeToFit()
        self.presentControllerButton.center.x = self.view.frame.width  / 2
        self.presentControllerButton.center.y = self.view.frame.height / 4 * 3
        self.view.addSubview(self.presentControllerButton)
    }
    
    @objc func openStack(_ sender: UIButton) {
        let controller = UIViewController()
        controller.view.backgroundColor = .white
        self.presentAsStack(controller)
    }
    
    @objc func openStackCustom(_ sender: UIButton) {
        let controller = UIViewController()
        controller.view.backgroundColor = .white
        let transitionDelegate = MLStackTransitionDelegate()
        controller.transitioningDelegate = transitionDelegate
        controller.modalPresentationStyle = .custom
        controller.modalPresentationCapturesStatusBarAppearance = true
        self.present(controller, animated: true, completion: nil)
    }
}

