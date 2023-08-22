//
//  RestService.swift
//  PhotosList
//
//  Created by Mathan Rajan J on 21/08/23.
//

import Foundation

class RestService {
    static var sharedInstance = RestService()
    
    func getPhotosList() async throws -> [PhotosListModel] {
        return try await RestClient.sharedInstance.sendRequest(request: GetPhotosListRequest(), type: [PhotosListModel].self)
    }
}
