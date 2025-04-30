//
//  AnimalViewModel.swift
//  Wilder
//
//  Created by Damian Perez on 2/7/24.
//  Abstract: Manages animal data and categorization for the app.
//

import Foundation

class AnimalViewModel: ObservableObject {
    @Published var animals: [Animal] = AnimalData.animals
    
    var categorizedAnimals: [ConservationStatus: [Animal]] {
        Dictionary(grouping: animals, by: { $0.conservationStatus })
    }
}
