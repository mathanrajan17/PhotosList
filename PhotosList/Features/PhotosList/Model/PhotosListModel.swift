//
//  PhotosListModel.swift
//  PhotosList
//
//  Created by Mathan Rajan J on 21/08/23.
//

import Foundation

struct PhotosListModel : Codable {
    let albumId : Int?
    let id : Int?
    var title : String?
    let url : String?
    let thumbnailUrl : String?
}
