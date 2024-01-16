//
//  SettingsFruitsView.swift
//  MySwiftUIApp
//
//  Created by Douglas Amorim on 16/01/24.
//

import SwiftUI

struct SettingsFruitsView: View {
    // MARK: Properties
    @Environment(\.presentationMode) var presentationMode
    
    // MARK: Body
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: Section 1
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most Fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essestial nutrients, including potassium, dietary, fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }
                    // MARK: Section 2
                    
                    // MARK: Section 3
                }//:VSTACK
                .navigationTitle(Text("Settings"))
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }){
                    Image(systemName: "xmark")
                })
                .padding()
            }//:SCROLLVIEW
        }//:NAVIGATIONVIEW
    }
}

// MARK: Preview
struct SettingsFruitsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsFruitsView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 13 Pro")
    }
}
