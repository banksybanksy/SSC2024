//
//  SpotlightDetailView.swift
//  Wilder
//
//  Created by Damian Perez on 2/7/24.
//  Abstract: Detailed view of a selected animal with audio feature.
//

import SwiftUI

struct SpotlightDetailView: View {
    let animal: Animal
    @Environment(\.accessibilityReduceMotion) private var reduceMotion
    @State private var imageOffset: CGFloat? = nil
    @State private var textOpacity: Double = 0
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                
                ScrollView {
                    VStack {
                        HStack {
                            Image(animal.image)
                                .resizable()
                                .scaledToFit()
                                .clipShape(Circle())
                                .frame(width: geometry.size.width * 0.3, height: geometry.size.width * 0.3)
                                .accessibilityLabel(animal.name)
                                .offset(x: imageOffset ?? geometry.size.width / 2) 
                                .onAppear {
                                    let restingOffset = -(geometry.size.width * 0.05)
                                    
                                    // With Reduce Motion on, skip the slide-in and keep a short fade.
                                    if reduceMotion {
                                        imageOffset = restingOffset
                                        withAnimation(.easeIn(duration: 0.3)) {
                                            textOpacity = 1
                                        }
                                    } else {
                                        withAnimation(.easeOut(duration: 1)) {
                                            imageOffset = restingOffset
                                        }
                                        withAnimation(.easeIn(duration: 1).delay(1)) {
                                            textOpacity = 1
                                        }
                                    }
                                }
                            
                            VStack(alignment: .leading, spacing: 10) {
                                Text(animal.name)
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .accessibilityAddTraits(.isHeader)
                                    .opacity(textOpacity)
                                
                                Text("Class: \(animal.animalClass)")
                                    .font(.subheadline)
                                    .fontWeight(.medium)
                                    .opacity(textOpacity)
                                
                                Text("Family: \(animal.family)")
                                    .font(.subheadline)
                                    .fontWeight(.medium)
                                    .opacity(textOpacity)
                                
                                Text("Ecosystem: \(animal.ecosystem)")
                                    .font(.subheadline)
                                    .fontWeight(.medium)
                                    .opacity(textOpacity)
                                
                                Text(animal.description)
                                    .font(.body)
                                    .fontWeight(.medium)
                                    .padding(.top, 20)
                                    .frame(maxWidth: geometry.size.width * 0.5, alignment: .leading)
                                    .fixedSize(horizontal: false, vertical: true)
                                    .opacity(textOpacity)
                                
                                Text("Status:")
                                    .font(.body)
                                    .fontWeight(.medium)
                                    .padding(.top, 20)
                                    .opacity(textOpacity)
                                
                                Text(animal.conservationStatus.rawValue)
                                    .font(.body)
                                    .foregroundColor(statusColor(for: animal.conservationStatus))
                                    .opacity(textOpacity)
                                
                                NavigationLink(destination: WGDetailView(animal: animal)) {
                                    Text("Explore more about \(animal.name)")
                                        .padding()
                                        .fontWeight(.medium)
                                }
                                .padding(.top, 10)
                                .opacity(textOpacity)
                            }
                            
                            Spacer()
                        }
                        .padding(.horizontal, geometry.size.width * 0.1)
                    }
                }
                .frame(width: geometry.size.width)
                
                Spacer()
            }
            .frame(height: geometry.size.height)
        }
    }
    
    //MARK: - Status Color
    private func statusColor(for status: ConservationStatus) -> Color {
        switch status {
        case .endangered, .someEndangered:
            return .red
        case .threatened:
            return .orange
        case .notThreatened:
            return .green
        }
    }
}


#Preview {
    NavigationStack {
        ContentView()
    }
}
