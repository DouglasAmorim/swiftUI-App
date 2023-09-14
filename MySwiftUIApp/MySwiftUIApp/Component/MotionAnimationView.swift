//
//  MotionAnimationView.swift
//  MySwiftUIApp
//
//  Created by Douglas Amorim on 11/09/23.
//

import SwiftUI

struct MotionAnimationView: View {
    // MARK: - PROPERTIES
    @State private var randomCircle: Int = Int.random(in: 6...12)
    @State private var isAnimating: Bool = false
    
    // MARK: - FUNCTIONS
    // 1. Randon Cordinate
    func randonCordinate() -> CGFloat {
        return CGFloat.random(in: 0...256)
    }
    
    // 2. Randon Size
    func randonSize() -> CGFloat {
        return CGFloat(Int.random(in: 4...80))
    }
    
    // 3. Randon Scale
    func randonScale() -> CGFloat {
        return CGFloat(Double.random(in: 0.1...2.0))
    }
    
    // 4. Randon Speed
    func randonSpeed() -> Double {
        return Double.random(in: 0.05...1.0)
    }
    
    // 5. Randon Delay
    func randonDelay() -> Double {
        return Double.random(in: 0...2)
    }
    
    var body: some View {
        ZStack {
            ForEach(0...randomCircle, id: \.self) { item in
                Circle()
                    .foregroundColor(.white)
                    .opacity(0.25)
                    .frame(width: randonSize())
                    .position(x: randonCordinate(), y: randonCordinate())
                    .scaleEffect(isAnimating ? randonScale() : 1)
                    .onAppear(perform: {
                        withAnimation(
                            .interpolatingSpring(stiffness: 0.25, damping: 0.25)
                            .repeatForever()
                            .speed(randonSpeed())
                            .delay(randonDelay())
                        ) {
                            isAnimating = true
                        }
                    })
            }
        } //: Zstack
        .frame(width: 256, height: 256)
        .mask(Circle())
        .drawingGroup()
    }
}

struct MotionAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        MotionAnimationView()
            .background(
                Circle()
                    .fill(.teal)
            )
    }
}
