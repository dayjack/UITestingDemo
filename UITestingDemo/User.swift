//
//  User.swift
//  UITestingDemo
//
//  Created by ChoiYujin on 2023/04/17.
//

import Foundation
import Combine

class User: ObservableObject {
    
    @Published var isLoggedIn = false
    @Published var username = ""
    @Published var password = ""
    @Published var colorTheme = 0
    @Published var textSize: Double = 14
    @Published var font = "Arial"
    
    func login() -> Bool {
        guard username == "test" && password == "pass" else {
            return false
        }
        
        password = ""
        isLoggedIn = true
        return true
    }
    
    func logout() {
        isLoggedIn = false
        username = ""
    }
}
