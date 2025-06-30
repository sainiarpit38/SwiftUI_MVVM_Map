//
//  AppDelegate.swift
//  SwiftUI_MVVM_Map
//
//  Created by Entab on 30/06/25.
//

import UIKit
import GoogleMaps

class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        // ✅ Add your Google Maps API key here
        GMSServices.provideAPIKey("YOUR_GOOGLE_MAPS_API_KEY")

        return true
    }

    // Required for SwiftUI lifecycle
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
}
