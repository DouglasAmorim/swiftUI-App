//
//  ControllImageView.swift
//  MySwiftUIApp
//
//  Created by Douglas Amorim on 07/12/23.
//

import SwiftUI

struct ControllImageView: View {
    let icon: String
    var body: some View {
        Image(systemName: icon)
            .font(.system(size: 36))
    }
}

struct ControllImageView_Previews: PreviewProvider {
    static var previews: some View {
        ControllImageView(icon: "minus.magnifyingglass")
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
