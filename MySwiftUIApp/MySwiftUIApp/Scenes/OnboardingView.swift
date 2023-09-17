//
//  OnboardingView.swift
//  MySwiftUIApp
//
//  Created by Douglas Amorim on 17/09/23.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTY
    // The 'true' value will only be add on 'onboarding' propertie when the 'onboarding' key previously
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    // MARK: - BODY
    var body: some View {
        VStack(spacing: 20) {
            Text("Onboarding")
                .font(.largeTitle)
            
            Button(action: {
                // SomeAction
                isOnboardingViewActive = false
            }, label: {
                Text("Start")
            })
        }//: VStack
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
