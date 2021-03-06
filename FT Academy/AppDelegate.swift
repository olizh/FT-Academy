//
//  AppDelegate.swift
//  FT Academy
//
//  Created by Zhang Oliver on 14/12/25.
//  Copyright (c) 2014年 Zhang Oliver. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    //var reachability:IJReachability!
    


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        //GoogleConversionPing.pingWithConversionId ("993907328", label: "35JGCOi9xAQQgKX32QM", value: "0", isRepeatable: false)
        
        WXApi.registerApp("wxc1bc20ee7478536a", withDescription: "FT中文网")
        
        //NSLog("wechat register!")
        /*
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_LOW, 0), ^{
        [GoogleConversionPing pingWithConversionId:@"993907328"
        label:@"35JGCOi9xAQQgKX32QM"
        value:@"0" isRepeatable:NO];
        
        [WXApi registerApp:@"wxc1bc20ee7478536a" withDescription:@"FT中文网"];
        });
        */
        
        //let statusType = IJReachability().connectedToNetworkOfType()
        
        //NSNotificationCenter.defaultCenter().addObserver(self, selector:"checkForReachability:", name: kReachabilityChangedNotification, object: nil);
        
        
        /*
        let reachability = Reachability.reachabilityForInternetConnection()
        
        NSNotificationCenter.defaultCenter().addObserver(self,
        selector: "reachabilityChanged:",
        name: ReachabilityChangedNotification,
        object: reachability)
        
        reachability!.startNotifier()
        */
        

        
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
        //print ("application did become active")
        let rootViewController = self.window!.rootViewController as! ViewController
        rootViewController.checkBlankPage()
    }
    
    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    // tap on status bar to scroll back to top
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        super.touchesBegan(touches, withEvent: event)
        let events = event!.allTouches()
        let touch = events!.first
        let location = touch!.locationInView(self.window)
        let statusBarFrame = UIApplication.sharedApplication().statusBarFrame
        if CGRectContainsPoint(statusBarFrame, location) {
            NSNotificationCenter.defaultCenter().postNotificationName("statusBarSelected", object: nil)
        }
    }
    
}

