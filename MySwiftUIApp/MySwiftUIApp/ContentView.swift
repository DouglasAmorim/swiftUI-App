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
    
    var body: some View {
        Image("image-1")
            .resizable()
            .scaledToFit()
        
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
        
//
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
