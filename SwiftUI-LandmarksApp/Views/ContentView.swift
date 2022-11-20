//
//  ContentView.swift
//  SwiftUI-LandmarksApp
//
//  Created by 近藤米功 on 2022/11/13.
//

import SwiftUI
import CoreLocation

struct ContentView: View {
    var body: some View {
        VStack {
            MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
                .ignoresSafeArea(edges: .top) // mapを画面上端に
                .frame(height: 300)

            CircleImage(image: Image("turlerock"))
                .offset(y: -130) // 座標指定
                .padding(.bottom,-130)

            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundColor(.secondary) // 住所をグレー色

                Divider() // 仕切り

                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
