//
//  SpotlightView.swift
//  Wilder
//
//  Created by Damian Perez on 2/5/24.
//  Abstract: Showcases a featured animal daily with details.
//

import SwiftUI

struct SpotlightView: View {
    //MARK: - Body
    var body: some View {
        NavigationStack {
            GeometryReader { fullGeometry in
                VStack {
                    //MARK: - Animal Image
                    VStack {
                        Image(AnimalOfDayViewModel.currentAnimal.image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(height: fullGeometry.size.height * 0.75)
                            .clipped()
                            .overlay(
                                LinearGradient(gradient: Gradient(colors: [.clear, .black.opacity(0.5)]), startPoint: .top, endPoint: .bottom)
                                    .blur(radius: 0)
                            )
                            .cornerRadius(45)
                            .padding(5)
                    }
                    .frame(width: fullGeometry.size.width)
                    
                    //MARK: - Animal Info
                    HStack {
                        Spacer()
                        
                        Text(AnimalOfDayViewModel.currentAnimal.name)
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Spacer(minLength: 40)
                        
                        VStack(alignment: .leading) {
                            Text(AnimalOfDayViewModel.currentAnimal.description)
                                .font(.body)
                                .fontWeight(.medium)
                                .lineLimit(3)
                                .truncationMode(.tail)
                            
                            NavigationLink(destination: SpotlightDetailView(animal: AnimalOfDayViewModel.currentAnimal)) {
                                Text("Learn More")
                                    .font(.body)
                                    .fontWeight(.medium)
                            }
                        }
                        
                        Spacer()
                    }
                    .padding()
                }
                .navigationTitle("Spotlight")
            }
        }
    }
}

//MARK: - Date Extension
extension Date {
    var dayOfYear: Int {
        return Calendar.current.ordinality(of: .day, in: .year, for: self)!
    }
}

//MARK: - ViewModel
struct AnimalOfDayViewModel {
    static var currentAnimal: Animal {
        let index = Date().dayOfYear % AnimalData.animals.count
        return AnimalData.animals[index]
    }
}

#Preview {
    NavigationStack {
        ContentView()
    }
}
