//
//  FruitNutrientsView.swift
//  MySwiftUIApp
//
//  Created by Douglas Amorim on 15/01/24.
//

import SwiftUI

struct FruitNutrientsView: View {
    // MARK: Properties
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Proteins", "Vitamins", "Minerals"]
    // MARK: Body
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0 ..< nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    
                    HStack {
                        // When embeded in a group all modifier are set to all components
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }//: GroupBox
    }
}

// MARK: Preview
struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
