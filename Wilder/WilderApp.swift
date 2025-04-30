//
//  WilderApp.swift
//  Wilder
//
//  Created by Damian Perez on 2/5/24.
//

import SwiftUI

@main
struct WilderApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(AnimalViewModel())
        }
    }
}

/*
 Thank you Apple for another opportunity to present a vision.
 
 After discovering Apple's efforts to protect the environment, I was inspired to contribute
 by raising awareness among people about the diverse and beautiful fauna of our planet. My goal
 is to educate and make the minor changes within my community.
 
 Thank you for your consideration <3
 
 Best,
 Damian P.
 */
