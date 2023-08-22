//
//  PhotosListCellViewModel.swift
//  PhotosList
//
//  Created by Mathan Rajan J on 22/08/23.
//

import Foundation

class PhotosListCellViewModel: ObservableObject {
    @Published var title: String = ""
    private var thumbnailUrl: String
    private var imageUrl: String
    private var albumId: Int
    
    init(details: PhotosListModel) {
        self.title = details.title ?? ""
        self.thumbnailUrl = details.thumbnailUrl ?? ""
        self.imageUrl = details.url ?? ""
        self.albumId = details.albumId ?? 0
    }
    
    func getThumbnailUrl() -> String {
        thumbnailUrl
    }
    
    func getUrl() -> String {
        imageUrl
    }
    
    func getAlbumId() -> String {
        "\(albumId)"
    }
}

