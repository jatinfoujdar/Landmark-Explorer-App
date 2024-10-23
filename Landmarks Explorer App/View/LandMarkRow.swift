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
        Text(landmark.name)
    }
}

#Preview {
    LandMarkRow(landmark: landmarks[0])
}
