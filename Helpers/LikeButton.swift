//
//  LikeButton.swift
//  Assignment0210
//
//  Created by Erin Hurlburt on 2/9/22.
//

import SwiftUI

struct LikeButton: View {
    @Binding var isLiked: Bool
    
    var body: some View {
        Button {
            isLiked.toggle()
        } label: {
            Label("Toggle Likes", systemImage: isLiked ? "heart.fill" : "heart")
                .labelStyle(.iconOnly)
                .foregroundColor(isLiked ? .red : .gray)
        }
    }
}


struct LikeButton_Previews: PreviewProvider {
    static var previews: some View {
        LikeButton(isLiked: .constant(true))
    }
}


