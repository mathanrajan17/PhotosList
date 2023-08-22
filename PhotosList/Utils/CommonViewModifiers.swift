//
//  CommonViewModifiers.swift
//  PhotosList
//
//  Created by Mathan Rajan J on 22/08/23.
//

import Foundation
import SwiftUI

struct HeadingLabel: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity, alignment: .leading)
            .foregroundColor(.gray)
            .font(.subheadline)
    }
}
