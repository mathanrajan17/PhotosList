//
//  PhotosListCellView.swift
//  PhotosList
//
//  Created by Mathan Rajan J on 22/08/23.
//

import SwiftUI

struct PhotosListCellView: View {
    let thumbnailUrl: String
    let title: String
    
    var body: some View {
        HStack {
            LoadImageFromURL(url: thumbnailUrl, width: 30, height: 30, cornerRadious: 8)
            Text(title)
                .frame(alignment: .leading)
                .foregroundColor(.black)
                .padding(.leading, 8)
                .lineLimit(2)
        }.frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct PhotosListCellView_Previews: PreviewProvider {
    static var previews: some View {
        PhotosListCellView(thumbnailUrl: "https://via.placeholder.com/600/92c952", title: "Sample Image")
    }
}

