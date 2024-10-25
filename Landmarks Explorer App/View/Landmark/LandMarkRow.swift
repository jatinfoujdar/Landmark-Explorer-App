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
            
            if landmark.isFavorite{
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
        }
        .padding()
    }
}

#Preview {
    let landmarks = ModelData().landmarks
    Group {
        
        LandMarkRow(landmark: landmarks[0])
        LandMarkRow(landmark: landmarks[1])
    }
    
}
