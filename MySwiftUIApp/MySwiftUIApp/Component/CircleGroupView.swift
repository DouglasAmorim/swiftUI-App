//
//  CircleGroupView.swift
//  MySwiftUIApp
//
//  Created by Douglas Amorim on 22/09/23.
//

import SwiftUI

struct CircleGroupView: View {
    
    // MARK: - PROPERTIES
    @State var shapeColor: Color
    @State var shapeOpacity: Double
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            Circle()
                .stroke(shapeColor.opacity(shapeOpacity), lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            
            Circle()
                .stroke(shapeColor.opacity(shapeOpacity), lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)
            
        }//: ZSTACK
    }
}

struct CircleGroupView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.customBlue
                .ignoresSafeArea(.all, edges: .all)
            CircleGroupView(shapeColor: .white,
                            shapeOpacity: 0.2)
        }
        
    }
}
