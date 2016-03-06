//
//  AppDelegate.swift
//  Instagram
//
//  Created by Elijah Bullard on 3/1/16.
//  Copyright © 2016 Elijah Bullard. All rights reserved.
//

import UIKit
import Parse

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        //setup for tab view
/*        window = UIWindow(frame: UIScreen.mainScreen().bounds)

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let homeNavigationController = storyboard.instantiateViewControllerWithIdentifier("HomeNavigationController") as! UINavigationController
        let homeViewController = homeNavigationController.topViewController as! HomeViewController
        homeNavigationController.tabBarItem.title = "Home"
        //homeNavigationController.tabBarItem.image = UIImage(named: "IMAGE FILE NAME")
        
        let captureNavigationController = storyboard.instantiateViewControllerWithIdentifier("HomeNavigationController") as! UINavigationController
        let captureViewController = captureNavigationController.topViewController as! HomeViewController
        captureNavigationController.tabBarItem.title = "Capture"
        //captureNavigationController.tabBarItem.image = UIImage(named: "IMAGE FILE NAME")
        
        let profileNavigationController = storyboard.instantiateViewControllerWithIdentifier("ProfileNavigationController") as! UINavigationController
        let profileViewController = profileNavigationController.topViewController as! ProfileViewController
        profileNavigationController.tabBarItem.title = "Profile"
        //profileNavigationController.tabBarItem.image = UIImage(named: "IMAGE FILE NAME")
        
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [homeNavigationController, captureNavigationController, profileNavigationController]
        
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible() */
        
        // setup for Parse pod
        Parse.initializeWithConfiguration(
            ParseClientConfiguration(block: { (configuration:ParseMutableClientConfiguration) -> Void in
                configuration.applicationId = "Instagram"
                configuration.clientKey = "iewpjgphdbahj3jpgvpapojwp3j4"
                configuration.server = "https://sheltered-sands-31444.herokuapp.com/parse"
            })
        )
        
        // check if user is logged in.
        if PFUser.currentUser() == nil {
            // if there is a logged in user then load the home view controller
            print("There is no current user.")
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewControllerWithIdentifier("LoginViewController")
            window?.rootViewController = vc
        }
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

