//
//  CircleImagesView.swift
//  Landmarks Explorer App
//
//  Created by jatin foujdar on 21/10/24.
//

import SwiftUI

struct CircleImagesView: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
            Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImagesView(image: Image("turtlerock"))
}
