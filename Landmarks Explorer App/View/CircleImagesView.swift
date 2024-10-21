//
//  CircleImagesView.swift
//  Landmarks Explorer App
//
//  Created by jatin foujdar on 21/10/24.
//

import SwiftUI

struct CircleImagesView: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 3)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImagesView()
}
