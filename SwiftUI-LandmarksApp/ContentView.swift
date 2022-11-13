//
//  ContentView.swift
//  SwiftUI-LandmarksApp
//
//  Created by 近藤米功 on 2022/11/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                Text("Joshua Tree National Park")
                    .font(.subheadline)
            }


        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
