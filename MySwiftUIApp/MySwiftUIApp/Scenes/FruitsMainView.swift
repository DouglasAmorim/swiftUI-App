//
//  FruitsMainView.swift
//  MySwiftUIApp
//
//  Created by Douglas Amorim on 15/12/23.
//

import SwiftUI

struct FruitsMainView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        TabView {
            ForEach(0..<5) { _ in
                FruitCardView()
            }
        }//: TABVIEW
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: PREVIEW
struct FruitsMainView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsMainView()
    }
}
