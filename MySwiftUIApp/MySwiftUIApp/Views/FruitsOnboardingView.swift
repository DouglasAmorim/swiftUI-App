//
//  FruitsOnboardingView.swift
//  MySwiftUIApp
//
//  Created by Douglas Amorim on 18/12/23.
//

import Foundation

import SwiftUI

struct FruitsOnboardingView: View {
    // MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    
    // MARK: - BODY
    var body: some View {
        TabView {
            ForEach(0..<fruits.count) { fruitIndex in
                FruitCardView(fruit: fruitsData[fruitIndex])
            }
        }//: TABVIEW
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: PREVIEW
struct FruitsOnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsOnboardingView(fruits: fruitsData)
    }
}
