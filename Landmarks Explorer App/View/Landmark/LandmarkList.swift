//
//  LandmarkList.swift
//  Landmarks Explorer App
//
//  Created by jatin foujdar on 23/10/24.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly = false
        
    var filtredLandmarks: [Landmark]{
        modelData.landmarks.filter{ landmark in
            ( !showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView{
            List{
                Toggle(isOn: $showFavoritesOnly){
                    Text("Favorites")
                }
                ForEach(filtredLandmarks){ landmark in
                NavigationLink{
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandMarkRow(landmark: landmark)
                }
            }
        }
            .animation(.default, value: filtredLandmarks)
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
