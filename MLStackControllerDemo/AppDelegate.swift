//
//  AppDelegate.swift
//  MLStackControllerDemo
//
//  Created by Michel Anderson Lutz Teixeira on 28/05/19.
//  Copyright © 2019 micheltlutz. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        AppManager.shared.show(in: UIWindow(frame: UIScreen.main.bounds))
        
        return true
    }
}

