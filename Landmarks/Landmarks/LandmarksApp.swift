//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Ibukunoluwa Akintobi on 18/08/2023.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
