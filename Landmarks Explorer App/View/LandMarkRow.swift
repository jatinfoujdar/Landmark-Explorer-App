//
//  LandMarkRow.swift
//  Landmarks Explorer App
//
//  Created by jatin foujdar on 23/10/24.
//

import SwiftUI

struct LandMarkRow: View {
    var landmark : Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50,height: 50)
            Text(landmark.name)
         
            Spacer()
        }
        .padding()
    }
}

#Preview {
    LandMarkRow(landmark: landmarks[0])
}
