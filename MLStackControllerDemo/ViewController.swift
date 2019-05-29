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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func openStack(_ sender: UIButton) {
        let controller = UIViewController()
        controller.view.backgroundColor = .white
        self.presentAsStack(controller)
    }
    
    @IBAction func openStackCustom(_ sender: UIButton) {
        let controller = UIViewController()
        controller.view.backgroundColor = .white
        let transitionDelegate = MLStackTransitionDelegate()
        controller.transitioningDelegate = transitionDelegate
        controller.modalPresentationStyle = .custom
        controller.modalPresentationCapturesStatusBarAppearance = true
        self.present(controller, animated: true, completion: nil)
    }
}

