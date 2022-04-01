//
//  AppDelegate.swift
//  Todoey
//
//  Created by Angela Yu on 16/11/2017.
//  Copyright © 2017 Angela Yu. All rights reserved.
//

import UIKit
import CoreData
import RealmSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
//        let data = Data()
//        data.name = "Rafsan"
//        data.age = 24
        
        do {
        _ = try Realm()
//            try realm.write {
//                realm.add(data)
//            }
        }
        
        catch{
        }
        
        return true
    }
}
