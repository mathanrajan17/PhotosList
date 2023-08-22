//
//  GetPhotosListRequest.swift
//  PhotosList
//
//  Created by Mathan Rajan J on 21/08/23.
//

import Foundation

class GetPhotosListRequest: BaseApiRequest {
    var requestMethod: RequestMethod? = .get
    var requestBaseUrl: String = "https://jsonplaceholder.typicode.com/photos"
}
