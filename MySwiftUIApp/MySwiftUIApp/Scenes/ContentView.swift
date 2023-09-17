//
//  ContentView.swift
//  MySwiftUIApp
//
//  Created by Douglas Amorim on 21/08/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: AsyncImageView()) {
                    Text("Open AsyncImage App")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.customSalmonLight)
                }
                
                NavigationLink(destination: HikeMainView()) {
                    Text("Open Hike App")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.customIndigoMedium)
                }
                
                NavigationLink(destination: RestartMainView()) {
                    Text("Open Restar App")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.customGreenDark)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
