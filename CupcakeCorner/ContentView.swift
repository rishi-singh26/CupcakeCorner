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
    @State private var userName = ""
    @State private var email = ""
    var body: some View {
        Form {
            Section {
                TextField("User Name", text: $userName)
                TextField("Email", text: $email)
            }
            
            Section {
                Button("Create Accoount") {
                    print("Creating account")
                }
                .disabled(disableForm)
            }
        }
    }
    
    var disableForm: Bool {
        return email.count < 5 || email.count < 5
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
