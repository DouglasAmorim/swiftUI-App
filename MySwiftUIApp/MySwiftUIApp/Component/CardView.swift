//
//  CardView.swift
//  MySwiftUIApp
//
//  Created by Douglas Amorim on 05/09/23.
//

import SwiftUI

struct CardView: View {
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
                    Circle()
                        .fill(
                            LinearGradient(
                                colors: [Color.customIndigoMedium, Color.customSalmonLight],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                        .frame(width: 256, height: 256)
                    
                    Image("image-1")
                        .resizable()
                        .scaledToFit()
                    
                    // MARK: - FOOTER
                }
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
