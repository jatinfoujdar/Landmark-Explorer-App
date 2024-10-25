//
//  Landmarks_Explorer_AppApp.swift
//  Landmarks Explorer App
//
//  Created by jatin foujdar on 20/10/24.
//

import SwiftUI

@main
struct Landmarks_Explorer_AppApp: App {
    @State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
