//
//  LandmarkList.swift
//  SwiftUI-LandmarksApp
//
//  Created by 近藤米功 on 2022/11/16.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoriteOnly = false

    var filteredLandmarks: [Landmark] {
        landmarks.filter { landmark in
            (!showFavoriteOnly || landmark.isFavorite)
        }
    }

    var body: some View {

        NavigationView {
            // MARK: データのコレクションと、コレクションの各要素のビューを提供するクロージャを渡す(LandmarkはIdentifiableを準拠させる）
            List {
                Toggle(isOn: $showFavoriteOnly) {
                    Text("Favorites only")
                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
