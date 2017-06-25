//
//  AppDelegate.swift
//  MarvelSuperHeroes
//
//  Created by Miguel on 24/6/17.
//  Copyright © 2017 Miguel Pérez. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        UINavigationBar.appearance().barTintColor = .white
        self.window?.tintColor = .white
        if let barFont = UIFont(name: "AvengeanceMightiestAvenger", size: 25) {
         UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName:UIColor(red: 226/255, green: 54/255, blue: 54/255, alpha: 1), NSFontAttributeName:barFont]
         
         }
        
        return true
    }
}

