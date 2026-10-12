//
//  ContentView.swift
//  Wilder
//
//  Created by Damian Perez on 2/5/24.
//  Abstract: Root tab view for Spotlight, Wild Guide, Conservations and Spotter.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationStack {
                SpotlightView()
            }
            .tabItem {
                Label("Spotlight", systemImage: "rays")
            }
            
            NavigationStack {
                WGView()
            }
            .tabItem {
                Label("Wild Guide", systemImage: "book.pages")
            }
            
            NavigationStack {
                ConservationsView()
            }
            .tabItem {
                Label("Conservations", systemImage: "leaf.fill")
            }
            
            NavigationStack {
                MatchingGameView()
            }
            .tabItem {
                Label("Spotter", systemImage: "binoculars.fill")
            }
        }
        .environmentObject(AnimalViewModel())
    }
}

#Preview {
    NavigationStack {
        ContentView()
    }
}
