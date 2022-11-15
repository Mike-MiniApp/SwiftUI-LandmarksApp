//
//  LandmarkList.swift
//  SwiftUI-LandmarksApp
//
//  Created by 近藤米功 on 2022/11/16.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        // MARK: データのコレクションと、コレクションの各要素のビューを提供するクロージャを渡す(LandmarkはIdentifiableを準拠させる）
        List(landmarks) { landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
