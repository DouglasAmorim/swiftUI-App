//
//  FruitsMainView.swift
//  MySwiftUIApp
//
//  Created by Douglas Amorim on 15/12/23.
//

import SwiftUI

struct FruitsMainView: View {
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
struct FruitsMainView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsMainView(fruits: fruitsData)
    }
}
