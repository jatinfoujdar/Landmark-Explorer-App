//
//  LandmarkList.swift
//  Landmarks Explorer App
//
//  Created by jatin foujdar on 23/10/24.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks){ landmark in
            LandMarkRow(landmark: landmark)
        }
          
    }
}

#Preview {
    LandmarkList()
}
