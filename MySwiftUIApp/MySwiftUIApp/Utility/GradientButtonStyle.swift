//
//  GradientButtonStyle.swift
//  MySwiftUIApp
//
//  Created by Douglas Amorim on 07/09/23.
//

import Foundation
import SwiftUI

struct GradiendButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 24)
            .background(
                
                // Ternary Conditional Statement  witl Nil coalescing
                // Condition ? A : B
                configuration.isPressed ?
                // A: When user presses the button
                LinearGradient(
                    colors: [.customGrayMedium, .customGrayLight],
                    startPoint: .top,
                    endPoint: .bottom)
                :
                // B: When the button is not pressed
                LinearGradient(
                    colors: [.customGrayLight, .customGrayMedium],
                    startPoint: .top,
                    endPoint: .bottom)
            )
            .cornerRadius(40)
    }
}
