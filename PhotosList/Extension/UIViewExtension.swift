//
//  UIViewExtension.swift
//  PhotosList
//
//  Created by Mathan Rajan J on 22/08/23.
//

import Foundation
import SwiftUI

extension View {
    func makeHeadingLabel() -> some View {
        ModifiedContent(content: self, modifier: HeadingLabel())
    }
}
