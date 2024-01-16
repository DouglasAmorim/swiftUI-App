//
//  SettingsLabelView.swift
//  MySwiftUIApp
//
//  Created by Douglas Amorim on 16/01/24.
//

import SwiftUI

struct SettingsLabelView: View {
    // MARK: Propertie
    var labelText: String
    var labelImage: String
    
    // MARK: Body
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
