//
//  PhotosListApp.swift
//  PhotosList
//
//  Created by Mathan Rajan J on 21/08/23.
//

import SwiftUI

@main
struct PhotosListApp: App {
    
    init() {
        NetworkMonitor.shared.startMonitoring()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
