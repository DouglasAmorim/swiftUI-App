//
//  CardView.swift
//  MySwiftUIApp
//
//  Created by Douglas Amorim on 05/09/23.
//

import SwiftUI

struct CardView: View {
    // MARK: - PROPERTIES
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    
    // MARK: - FUNCTIONS
    func randomImage() {
        print("\n\n")
        print(" --- Enter randon image function ---")
        print("Status: Old image number = \(imageNumber)")
        repeat {
            self.randomNumber = Int.random(in: 1...5)
            print("Action: Random number generated = \(randomNumber)")
        } while randomNumber == imageNumber
        
        self.imageNumber = randomNumber
        print("Result: New image number = \(imageNumber)")
        print("--- End random image functions ---")
    }
    
    var body: some View {
        // MARK: - CARD
        
        ZStack {
            CustomBackgroundView()
            
            VStack {
                // MARK: - Header
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [.customGrayLight, .customGrayMedium],
                                    startPoint: .top,
                                    endPoint: .bottom)
                        )
                        
                        Spacer()
                        
                        Button {
                            // Action SHOW A sheet
                            print("The Button was pressed")
                        } label: {
                            CustomButtonView()
                        }
                    }
                    
                    Text("Fun and enjoyable outdoor activities for friends and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                } // : HEADER
                .padding(.horizontal, 24)
                
                // MARK: - Main Content
                ZStack {
                    CustomCircleView()
                    
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.default, value: imageNumber)
                }
                
                // MARK: - FOOTER
                
                Button {
                    // Action: Generate a randon number
                    randomImage()
                } label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(LinearGradient(
                            colors: [.customGreenDark, .customGreenMedium],
                            startPoint: .top,
                            endPoint: .bottom))
                        .shadow(
                            color:.black.opacity(0.25),
                            radius: 0.25,
                            x: 1,
                            y: 2)
                }
                .buttonStyle(GradiendButton())

            }
        } // CARD
        .frame(width: 320, height: 570)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
