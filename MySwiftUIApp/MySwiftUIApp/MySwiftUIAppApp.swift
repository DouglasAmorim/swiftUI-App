//
//  MySwiftUIAppApp.swift
//  MySwiftUIApp
//
//  Created by Douglas Amorim on 21/08/23.
//

import SwiftUI

@main
struct MySwiftUIAppApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                FruitsOnboardingView()
            } else {
                ContentView()
            }
            
        }
    }
}
