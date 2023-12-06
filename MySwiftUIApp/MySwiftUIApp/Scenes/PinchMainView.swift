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
    @State private var imageOffset: CGSize = .zero
    
    // MARK: - Function
    private func resetImageState() {
        return withAnimation(.spring()) {
            imageScale = 1
            imageOffset = .zero
        }
    }
    
    // MARK: - Content
    var body: some View {
        
        NavigationView {
            ZStack {
                Color.clear
                // MARK: - Page Image
                Image("magazine-front-cover")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    .padding()
                    .shadow(color: .black.opacity(0.2), radius: 12, x: 2, y: 2)
                    .opacity(isAnimating ? 1 : 0)
                    .offset(x: imageOffset.width, y: imageOffset.height)
                    .scaleEffect(imageScale)
                // MARK: - 1. Tap Gesture
                    .onTapGesture(count: 2, perform: {
                        if imageScale == 1 {
                            withAnimation(.spring()) {
                                imageScale = 5
                            }
                        } else {
                            resetImageState()
                        }
                    })
                // MARK: - 2. Drag Gesture
                    .gesture(
                        DragGesture()
                            .onChanged { value in
                                withAnimation(.linear(duration: 1)) {
                                    imageOffset = value.translation
                                }
                            }
                            .onEnded { _ in
                                if imageScale <= 1 {
                                    resetImageState()
                                }
                            }
                    )
                // Implicit animation: .animation(.linear(durarion: 1), value: isAnimating)
            } //: ZStack
            .navigationTitle("Pinch & Zoom")
            .navigationBarTitleDisplayMode(.inline)
            .onAppear(perform: {
                withAnimation(.linear(duration: 1)) {
                    isAnimating = true
                }
            })
            // MARK: - INFO PANEL
            .overlay(
                InfoPanelView(scale: imageScale, offSet: imageOffset)
                    .padding(.horizontal)
                    .padding(.top, 30)
                , alignment: .top
            )
        } //: NavigationView
        .navigationViewStyle(.stack)
    }
}

struct PinchMainView_Previews: PreviewProvider {
    static var previews: some View {
        PinchMainView()
    }
}
