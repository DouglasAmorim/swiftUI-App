//
//  PageModel.swift
//  MySwiftUIApp
//
//  Created by Douglas Amorim on 11/12/23.
//

import Foundation

struct Page: Identifiable {
    let id: Int
    let imageName: String
}

extension Page {
    var thumbnailName: String {
        return "thumb-" + imageName
    }
}
