//
//  Assignment0210App.swift
//  Assignment0210
//
//  Created by Erin Hurlburt on 1/27/22.
//

import SwiftUI

@main
struct SongsApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
