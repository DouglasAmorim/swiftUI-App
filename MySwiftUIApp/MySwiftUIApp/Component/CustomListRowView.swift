//
//  CustomListRowView.swift
//  MySwiftUIApp
//
//  Created by Douglas Amorim on 13/09/23.
//

import SwiftUI

struct CustomListRowView: View {
    // MARK: - PROPERTIES
    @State var rowLabel: String
    @State var rowIcon: String
    @State var rowContent: String? = nil
    @State var rowTintColor: Color
    @State var rowLinkLabel: String? = nil
    @State var rowLinkDestination: String? = nil
    
    var body: some View {
        LabeledContent {
            // Content
            if rowContent != nil {
                Text(rowContent ?? "")
                    .foregroundColor(.primary)
                    .fontWeight(.heavy)
            } else if let label = rowLinkLabel, let destination = rowLinkDestination {
                Link(label, destination: URL(string: destination)!)
                    .foregroundColor(rowTintColor)
                    .fontWeight(.heavy)
            } else {
                /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
            }
        } label: {
            // Label
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundColor(rowTintColor)
                    Image(systemName: rowIcon)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                }
                Text(rowLabel)
            }
        }
    }
}

struct CustomListRowView_Previews: PreviewProvider {
    static var previews: some View {
        List {
            CustomListRowView(rowLabel: "Website",
                              rowIcon: "globe",
                              rowContent: nil,
                              rowTintColor: .pink,
                              rowLinkLabel: "GitHub",
                              rowLinkDestination: "https://github.com/DouglasAmorim")
        }
    }
}
