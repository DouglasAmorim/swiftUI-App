//
//  exemplo.swift
//  MySwiftUIApp
//
//  Created by Douglas Amorim on 28/09/23.
//

import SwiftUI

struct exemplo: View {
    var body: some View {
        
        HStack(spacing: 24) {
            Text("Exemplo")
            
            Spacer()
            
            VStack(spacing: 20) {
                NavigationLink(destination: HomeView()) {
                    Text("Redirect")
                }
                
                Button(action: {
                    print("haha")
                }, label: {
                    Text("Button")
                })
                
                Text("Hello, World auhsausha ashausha sasuh uadhu dasd asdas duashd asd asdahsduashduas diasjd asidjasl djs vjsd fnadsjf dfa fsadsf kdsajfkj afj,n fksabfk adahBDASD skadnjnfK FJBd!")
            }
        }
        .padding(24)

    }
}

struct exemplo_Previews: PreviewProvider {
    static var previews: some View {
        exemplo()
    }
}
