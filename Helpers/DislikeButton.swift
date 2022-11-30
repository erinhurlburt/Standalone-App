//
//  DislikeButton.swift
//  Assignment0210
//
//  Created by Erin Hurlburt on 2/9/22.
//

import SwiftUI

struct DislikeButton: View {
    @Binding var isDisliked: Bool
    
    var body: some View {
        Button {
            isDisliked.toggle()
        } label: {
            Label("Toggle Likes", systemImage: isDisliked ? "heart.slash" : "heart.slash")
                .labelStyle(.iconOnly)
                .foregroundColor(isDisliked ? .red : .gray)
        }
        
    }
}


struct DislikeButton_Previews: PreviewProvider {
    static var previews: some View {
        DislikeButton(isDisliked: .constant(true))
    }
}

