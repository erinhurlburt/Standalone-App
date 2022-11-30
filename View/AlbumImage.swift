//
//  AlbumImage.swift
//  Assignment0210
//
//  Created by Erin Hurlburt on 2/3/22.
//

import SwiftUI

struct AlbumImage: View {
    var image: Image

    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 450, height: 180)
    }
}

struct AlbumImage_Previews: PreviewProvider {
    static var previews: some View {
        AlbumImage(image: Image("BeatlesCover"))
    }
}
