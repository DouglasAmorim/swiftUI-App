//
//  FruitsMainView.swift
//  MySwiftUIApp
//
//  Created by Douglas Amorim on 15/12/23.
//

import SwiftUI

struct FruitsMainView: View {
    // MARK: - PROPERTIES
    @State private var isShowingSettings: Bool = false
    var fruits: [Fruit] = fruitsData
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit), label: {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    })

                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing:
                Button(action: {
                    isShowingSettings = true
                }) {
                    Image(systemName: "slider.horizontal.3")
                }//:BUTTON
                .sheet(isPresented: $isShowingSettings) {
                    SettingsFruitsView()
                }
            )
        }//: NAVIGATIONVIEW
    }
}

// MARK: PREVIEW
struct FruitsMainView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsMainView(fruits: fruitsData)
    }
}
