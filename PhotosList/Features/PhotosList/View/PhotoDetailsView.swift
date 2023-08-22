//
//  PhotoDetailsView.swift
//  PhotosList
//
//  Created by Mathan Rajan J on 22/08/23.
//

import SwiftUI

struct PhotoDetailsView: View {
    @Binding var title: String
    let imageUrl: String
    let albumId: String
    @State var shouldEnableTextField: Bool = false
    @FocusState private var suppliesIsFocused: Bool
    var body: some View {
        VStack(alignment: .leading) {
            LoadImageFromURL(url: imageUrl, width: UIScreen.main.bounds.width - 32, height: 200, cornerRadious: 0)
                .frame(alignment: .center)
            VStack(alignment: .leading, spacing: 8) {
                Text(ConstantString.photoName)
                    .makeHeadingLabel()
                HStack(spacing: 0, content: {
                    if shouldEnableTextField {
                        TextField("", text: $title, onEditingChanged: { isEditing in
                            if !isEditing {
                                shouldEnableTextField = false
                            }
                        })
                        .frame(maxWidth: .infinity)
                        .focused($suppliesIsFocused)
                        .disabled(!shouldEnableTextField)
                    } else {
                        Text(title)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .foregroundColor(.black)
                    }
                    Button {
                        suppliesIsFocused = true
                        shouldEnableTextField = true
                    } label: {
                        Image(ImageNames.edit).frame(width: 12, height: 12)
                    }.frame(width: 30)
                })
            }.padding(.top, 8)
            VStack(alignment: .leading, spacing: 8) {
                Text(ConstantString.albumId)
                    .makeHeadingLabel()
                Text(albumId)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(.black)
            }
        }.padding([.leading, .trailing], 16)
        Spacer()
    }
}

struct PhotoDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoDetailsView(title: .constant("Sample Image"), imageUrl: "https://via.placeholder.com/600/92c952", albumId: "12")
    }
}


