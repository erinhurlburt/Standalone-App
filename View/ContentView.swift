//
//  ContentView.swift
//  Assignment0210
//
//  Created by Erin Hurlburt on 1/27/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        SongList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
