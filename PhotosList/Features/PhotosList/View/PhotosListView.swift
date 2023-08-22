//
//  PhotosListView.swift
//  PhotosList
//
//  Created by Mathan Rajan J on 21/08/23.
//

import SwiftUI

struct PhotosListView: View {
    @StateObject var viewModel = PhotosListViewModel()
    var body: some View {
        ZStack {
            if viewModel.isLoading {
                ProgressView()
                    .scaleEffect(2.0, anchor: .center)
                    .zIndex(1)
            }
            NavigationStack {
                VStack {
                    List($viewModel.photosList.indices, id: \.self) { index in
                        let itemDetails = viewModel.photosList[index]
                        NavigationLink(destination: PhotoDetailsView(title: $viewModel.photosList[index].title, imageUrl: itemDetails.getUrl(), albumId: itemDetails.getAlbumId())) {
                            PhotosListCellView(thumbnailUrl: itemDetails.getThumbnailUrl(), title: itemDetails.title)
                        }
                    }
                }.onAppear {
                    if viewModel.isFirstTime {
                        viewModel.isFirstTime.toggle()
                        Task {
                            await viewModel.getPhotosList()
                        }
                    }
                    
                }.navigationTitle(ConstantString.photosList)
            }
        }
        
    }
}

struct PhotosListView_Previews: PreviewProvider {
    static var previews: some View {
        PhotosListView()
    }
}
