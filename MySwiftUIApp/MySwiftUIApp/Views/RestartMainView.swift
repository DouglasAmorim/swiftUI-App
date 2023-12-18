//
//  RestartMainView.swift
//  MySwiftUIApp
//
//  Created by Douglas Amorim on 17/09/23.
//

import SwiftUI

struct RestartMainView: View {
    // @AppStorage is from SwiftUI and uses 'UsersDefaults'
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        ZStack {
            if isOnboardingViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }
    }
}

struct RestartMainView_Previews: PreviewProvider {
    static var previews: some View {
        RestartMainView()
    }
}
