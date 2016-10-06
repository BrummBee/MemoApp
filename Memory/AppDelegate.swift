//
//  AppDelegate.swift
//  Memory
//
//  Created by Lukas Bühler on 05.10.16.
//  Copyright © 2016 Lukas Bühler. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let coreDataStack = CoreDataStack()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {
        if let nc = window?.rootViewController as? UINavigationController,
            let tvc = nc.topViewController as? MemoryTableViewController {
            tvc.coreDataStack = coreDataStack
        }
        return true
    }
}

