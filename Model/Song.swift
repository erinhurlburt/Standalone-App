//
//  Song.swift
//  Assignment0210
//
//  Created by Erin Hurlburt on 2/2/22.
//

import Foundation
import SwiftUI

struct Song: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var album: String
    var artist: String
    var genre: String
    var lyrics: String
    var isFavorite: Bool
    var isLiked: Bool
    var isDisliked: Bool
    var color: String

    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var albumImageName: String
    var albumCover: Image {
        Image(albumImageName)
    }

    
}

    
