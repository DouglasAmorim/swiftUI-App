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
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { fruit in
                    FruitRowView(fruit: fruit)
                        .padding(.vertical, 4)
                }
            }
        }//: NAVIGATIONVIEW
    }
}

// MARK: PREVIEW
struct FruitsMainView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsMainView(fruits: fruitsData)
    }
}
