//
//  AppDelegate.swift
//  Todoey
//
//  Created by Alix Christa kaze on 2018-03-22.
//  Copyright © 2018 planstomake. All rights reserved.
//

import UIKit
import RealmSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

//        Realm.Configuration.defaultConfiguration = Realm.Configuration(
//            // version (if you've never set a schema version before, the version is 0).
//            schemaVersion: 10,
//            migrationBlock: { migration, oldSchemaVersion in
//                if (oldSchemaVersion < 10) {
//                }
//        })
//        print(Realm.Configuration.defaultConfiguration.fileURL)
        
        do {
            _ = try Realm()
        }
        catch {
            print("Error initialising Realm \(error)")
        }
        return true
    }

}

