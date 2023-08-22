//
//  PhotosListViewModel.swift
//  PhotosList
//
//  Created by Mathan Rajan J on 21/08/23.
//

import Foundation

class PhotosListViewModel: ObservableObject {
    
    @Published var photosList: [PhotosListCellViewModel] = []
    @Published var isLoading: Bool = false
    var isFirstTime: Bool = true
    
    @MainActor
    func getPhotosList() async {
        isLoading = true
        defer {
            isLoading = false
        }
        do {
            let response = try await RestService.sharedInstance.getPhotosList()
            self.createCellViewModel(response: response)
        } catch {
            print(error.localizedDescription)
        }
    }
    
    @MainActor
    private func createCellViewModel(response: [PhotosListModel]) {
        for details in response {
            let viewModel = PhotosListCellViewModel(details: details)
            photosList.append(viewModel)
        }
    }
}
