//
//  EcoSphereApp.swift
//  EcoSphere
//
//  Created by Damian Perez on 2/5/24.
//

import SwiftUI

@main
struct EcoSphereApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
    }
}
