//
//  AppDelegate.swift
//  StarBucksClone
//
//  Created by waheedCodes on 11/10/2020.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .systemBackground
        
        let homeViewController = HomeViewController()
        let scanViewController = ScanViewController()
        let orderViewController = OrderViewController()
        let giftViewController = GiftViewController()
        let storesViewController = StoresViewController()
        
        let homeNavigationController = makeNavigationController(rootViewController: homeViewController)
        let scanNavigationController = UINavigationController(rootViewController: scanViewController)
        let orderNavigationController = UINavigationController(rootViewController: orderViewController)
        let giftNavigationController = UINavigationController(rootViewController: giftViewController)
        let storesNavigationController = UINavigationController(rootViewController: storesViewController)
        
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [homeNavigationController, scanNavigationController, orderNavigationController, giftNavigationController, storesNavigationController]
        
        window?.rootViewController = tabBarController
        
        return true
    }

}
