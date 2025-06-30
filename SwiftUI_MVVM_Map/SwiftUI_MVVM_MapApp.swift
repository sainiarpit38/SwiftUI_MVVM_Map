//
//  SwiftUI_MVVM_MapApp.swift
//  SwiftUI_MVVM_Map
//
//  Created by Entab on 30/06/25.
//

import SwiftUI

@main
struct SwiftUI_MVVM_MapApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            CurrentLocationView()
        }
    }
}
