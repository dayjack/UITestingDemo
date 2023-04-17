//
//  UITestingDemoApp.swift
//  UITestingDemo
//
//  Created by ChoiYujin on 2023/04/17.
//

import SwiftUI

@main
struct UITestDemoApp: App {
    var user = User()
 
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(user)
        }
    }
}
