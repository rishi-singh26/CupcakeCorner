//
//  ContentView.swift
//  CupcakeCorner
//
//  Created by Rishi Singh on 14/09/23.
//

import SwiftUI

struct Response: Codable {
    var results: [Result]
}

struct Result: Codable {
    var trackId: Int
    var trackName: String
    var collectionName: String
}

struct ContentView: View {
    @State private var results = [Result]()
    var body: some View {
        VStack {
            Spacer()
            
            AsyncImage(url: URL(string: "https://hws.dev/img/logo.png")) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 200, height: 200)
            
            Spacer()
            
            AsyncImage(url: URL(string: "https://hws.dev/img/logo.png")) { phase in
                if let image = phase.image {
                    image.resizable()
                } else if phase.error != nil {
                    Text("Image not found")
                } else {
                    ProgressView()
                }
            }
            .frame(width: 200, height: 200)
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
