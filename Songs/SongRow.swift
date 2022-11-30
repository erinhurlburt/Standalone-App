//
//  SongList.swift
//  Assignment0210
//
//  Created by Erin Hurlburt on 2/2/22.
//

import SwiftUI

struct SongRow: View {
    var song: Song
   
    var body: some View {
        HStack {
            song.albumCover
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(5)
            Text(song.name)

            Spacer()
            
            if song.isFavorite {
                Image(systemName: "star.fill")
                    .imageScale(.medium)
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct SongRow_Previews: PreviewProvider {
    static var songs = ModelData().songs
    
    static var previews: some View {
        Group {
            SongRow(song: songs[0])
            //SongRow(song: songs[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
