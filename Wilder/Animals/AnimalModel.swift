//
//  AnimalModel.swift
//  Wilder
//
//  Created by Damian Perez on 2/5/24.
//  Abstract: This file defines the core data models for representing animals and their conservation statuses within the app.
//

import Foundation

enum ConservationStatus: String, CaseIterable {
    case endangered = "Endangered"
    case someEndangered = "Some Endangered"
    case threatened = "Threatened"
    case notThreatened = "Not Threatened"
}

struct Animal: Identifiable, Hashable {
    var id = UUID()
    var name: String
    var image: String
    var animalClass: String
    var family: String
    var ecosystem: String
    var funFacts: [String]
    var conservationStatus: ConservationStatus
    var soundFileName: String
    var description: String
}
