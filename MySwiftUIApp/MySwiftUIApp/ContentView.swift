//
//  ContentView.swift
//  MySwiftUIApp
//
//  Created by Douglas Amorim on 21/08/23.
//

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
struct ContentView: View {
    private let imageUrl: String = "https://credo.academy/credo-academy@3x.png"
    var body: some View {
        // MARK: Basic Async image
//        AsyncImage(url: URL(string: imageUrl))
        
        // MARK: Scale Async Image
//        AsyncImage(url: URL(string: imageUrl), scale: 3.0)
        
        // MARK: Place holder Aync Image
//        AsyncImage(url: URL(string: imageUrl)) { image in
//            image
//                .imageModifier()
//        } placeholder: {
//            Image(systemName: "photo.circle.fill")
//                .iconModifier(maxWidth: 128, color: .purple, opacity: 0.5)
//
//        }
//        .padding(40)
        
        // MARK: Phase Async Image
//        AsyncImage(url: URL(string: imageUrl)) { phase in
//            if let image = phase.image {
//                image.imageModifier()
//            } else if phase.error != nil {
//                Image(systemName: "ant.circle.fill").iconModifier(maxWidth: 128, color: .purple, opacity: 0.5)
//            } else {
//                Image(systemName: "photo.circle.fill").iconModifier(maxWidth: 128, color: .purple, opacity: 0.5)
//            }
//        }
//        .padding(40)
        
        // MARK: Animation Async Image
        let transaction = Transaction(animation: .spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.25))
        
        AsyncImage(url: URL(string: imageUrl), transaction: transaction) { phase in
            switch phase {
            case .success(let image):
                image.imageModifier()
                    .transition(.scale)
                
            case .failure(_):
                Image(systemName: "ant.circle.fill").iconModifier(maxWidth: 128, color: .purple, opacity: 0.5)
                
            case .empty:
                Image(systemName: "photo.circle.fill").iconModifier(maxWidth: 128, color: .purple, opacity: 0.5)
            @unknown default:
                ProgressView()
            }
        }
        .padding(40)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
