//
//  AppDelegate.swift
//  SwiftClassStructComparison
//
//  Created by Eduardo Carminati on 30/09/2018.
//  Copyright © 2018 Eduardo Carminati. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        Test.run()
    
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = UIViewController()
        window?.makeKeyAndVisible()
        
        return true
    }

}

