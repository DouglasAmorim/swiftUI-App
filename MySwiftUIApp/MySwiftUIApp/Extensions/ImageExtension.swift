//
//  ImageExtension.swift
//  MySwiftUIApp
//
//  Created by Douglas Amorim on 03/09/23.
//

import Foundation
import SwiftUI

extension Image {
    func imageModifier() -> some View {
        self
            .resizable()
            .scaledToFit()
    }
    
    func iconModifier(maxWidth: CGFloat, color: Color, opacity: Double ) -> some View {
        self
            .imageModifier()
            .frame(maxWidth: maxWidth)
            .foregroundColor(color)
            .opacity(opacity)
    }
}
