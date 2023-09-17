//
//  HomeView.swift
//  MySwiftUIApp
//
//  Created by Douglas Amorim on 17/09/23.
//

import SwiftUI

struct HomeView: View {
    // MARK: - PROPERTIE
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Home")
                .font(.largeTitle)
            
            Button(action: {
                isOnboardingViewActive = true
            }, label: {
                Text("Restart")
            })
        }//: VSTACK
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
