//
//  CircleImage.swift
//  Assignment0210
//
//  Created by Erin Hurlburt on 2/2/22.
//

import SwiftUI

struct CircleImage: View {
    var image: Image

    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 450, height: 180)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.black, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("TheBeatles"))
    }
}
