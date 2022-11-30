//
//  SongDetail.swift
//  Assignment0210
//
//  Created by Erin Hurlburt on 2/3/22.
//

import SwiftUI

struct SongDetail: View {
    @GestureState private var isDetectingPress = false
    @EnvironmentObject var modelData: ModelData
    var song: Song
    
    var songIndex: Int {
        modelData.songs.firstIndex(where: { $0.id == song.id })!
    }
    


    var body: some View {
        ScrollView {
            
            AlbumImage(image: song.albumCover)
                .offset(y: 50)
                .padding(.bottom, -150)

        
            // animation code demonstrated from StackOverflow
            //https://stackoverflow.com/questions/63193625/tap-animation-on-image-swiftui
            CircleImage(image: song.image)
                .offset( x:70, y: 200)
                .padding(.bottom, 150)
                .scaleEffect(isDetectingPress ? 0.5 : 1)
                .animation(.spring(), value: isDetectingPress)
                .gesture(LongPressGesture(minimumDuration: 0.1).sequenced(before:DragGesture(minimumDistance: 0))
                .updating($isDetectingPress) { value, state, _ in
                    switch value {
                        case .second(true, nil):
                            state = true
                        default:
                            break
                    }
                })
            VStack(alignment: .leading) {
                HStack {
                    Text(song.name)
                        .font(.title)
                    FavoriteButton(isSet: $modelData.songs[songIndex].isFavorite)
                }
                
            
                
                HStack {
                    LikeButton(isLiked: $modelData.songs[songIndex].isLiked)
                    DislikeButton(isDisliked: $modelData.songs[songIndex].isDisliked)
                }
                    

                HStack {
                    Text(song.album)
                    Spacer()
                    Text(song.artist)
                    
                }
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider()

                Text("Lyrics")
                    .font(.title2)
                    .background(BadgeBackground())
                    Spacer()
                Text(song.lyrics)
                    .background(BadgeBackground())
 
            }

            .padding()
            .padding()
            
        }
        
        .navigationTitle(song.name)
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct SongDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        SongDetail(song: modelData.songs[0])
            .environmentObject(modelData)
    }
}


