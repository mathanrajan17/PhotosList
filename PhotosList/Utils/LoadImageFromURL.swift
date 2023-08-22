//
//  LoadImageFromURL.swift
//  PhotosList
//
//  Created by Mathan Rajan J on 21/08/23.
//

import Foundation
import SwiftUI
import SDWebImageSwiftUI

struct LoadImageFromURL: View {
    var url: String
    var width: CGFloat
    var height: CGFloat
    var cornerRadious: CGFloat

    var body: some View {
        WebImage(url: URL(string: url))
            .resizable()
            .frame(width: width, height: height)
            .cornerRadius(cornerRadious)
            .scaledToFill()
    }
}
