//
//  PinchMainView.swift
//  MySwiftUIApp
//
//  Created by Douglas Amorim on 02/11/23.
//

import SwiftUI

struct PinchMainView: View {
    // MARK: - Propertie
    @State private var isAnimating: Bool = false
    @State private var imageScale: CGFloat = 1
    
    // MARK: - Function
    
    // MARK: - Content
    var body: some View {
        
        NavigationView {
            ZStack {
                // MARK: - Page Image
                Image("magazine-front-cover")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    .padding()
                    .shadow(color: .black.opacity(0.2), radius: 12, x: 2, y: 2)
                    .opacity(isAnimating ? 1 : 0)
                    .scaleEffect(imageScale)
                // MARK: - 1 Tap Gesture
                    .onTapGesture(count: 2, perform: {
                        if imageScale == 1 {
                            withAnimation(.spring()) {
                                imageScale = 5
                            }
                        } else {
                            withAnimation(.spring()) {
                                imageScale = 1
                            }
                        }
                    })
                // Implicit animation: .animation(.linear(durarion: 1), value: isAnimating)
            } //: ZStack
            .navigationTitle("Pinch & Zoom")
            .navigationBarTitleDisplayMode(.inline)
            .onAppear(perform: {
                withAnimation(.linear(duration: 1)) {
                    isAnimating = true
                }
            })
        } //: NavigationView
        .navigationViewStyle(.stack)
    }
}

struct PinchMainView_Previews: PreviewProvider {
    static var previews: some View {
        PinchMainView()
    }
}
