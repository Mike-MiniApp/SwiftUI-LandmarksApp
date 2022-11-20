//
//  SwiftUI_LandmarksAppApp.swift
//  SwiftUI-LandmarksApp
//
//  Created by 近藤米功 on 2022/11/13.
//

import SwiftUI

@main
struct SwiftUI_LandmarksAppApp: App {

    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
