//
//  SongList.swift
//  Assignment0210
//
//  Created by Erin Hurlburt on 2/3/22.
//

import SwiftUI

struct SongList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredSongs: [Song] {
        modelData.songs.filter { song in
            (!showFavoritesOnly || song.isFavorite)
        }
    }
    
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                ForEach(filteredSongs) { song in
                    NavigationLink {
                        SongDetail(song: song)
                    } label: {
                        SongRow(song: song)
                    }
                }
            }
            .navigationTitle("Songs")
        }
        
    }
    
}

struct SongList_Previews: PreviewProvider {
    static var previews: some View {
        SongList()
            .environmentObject(ModelData())
    }
}

