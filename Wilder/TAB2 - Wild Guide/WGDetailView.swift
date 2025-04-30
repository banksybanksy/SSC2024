//
//  WGDetailView.swift
//  Wilder
//
//  Created by Damian Perez on 2/8/24.
//  Abstract: Displays detailed info and fun facts for a selected animal.
//

import SwiftUI
import AVFoundation

struct WGDetailView: View {
    var animal: Animal
    @State private var audioPlayer: AVAudioPlayer?
    
    //MARK: - Body
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            VStack(spacing: 10) {
                //MARK: - Animal Details
                
                VStack(spacing: 20) {
                    //MARK: - Animal Title
                    Text(animal.name)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding(.top, -100)
                        
                    Spacer()
                    
                    HStack {
                        //MARK: - Animal Image
                        Image(animal.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .frame(width: 300, height: 250)
                        
                        VStack(alignment: .leading, spacing: 5) {
                            //MARK: - Animal Attributes
                            Text("Class: \(animal.animalClass)").font(.subheadline).fontWeight(.medium)
                            Text("Family: \(animal.family)").font(.subheadline).fontWeight(.medium)
                            Text("Ecosystem: \(animal.ecosystem)").font(.subheadline).fontWeight(.medium)
                            Text(animal.description)
                                .font(.body)
                                .fontWeight(.medium)
                                .padding(.top, 5)
                                .fixedSize(horizontal: false, vertical: true)
                            Text("Status:")
                                .font(.body)
                                .fontWeight(.medium)
                                .padding(.top, 10)
                            Text(animal.conservationStatus.rawValue)
                                .font(.body)
                                .fontWeight(.medium)
                                .foregroundColor(statusColor(for: animal.conservationStatus))
                            
                            //MARK: - Sound Playback
                            if animal.soundFileName != "notRecorded" {
                                Button("Listen to \(animal.name)") {
                                    playSound(for: animal)
                                }
                                .padding(.top, 20)
                                .cornerRadius(5)
                                .hoverEffect()
                            }
                        }
                        .padding(.leading)
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    
                    //MARK: - Fun Facts
                    Text("Fun Facts")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 10) {
                            ForEach(animal.funFacts.prefix(5), id: \.self) { fact in
                                Text(fact)
                                    .padding()
                                    .frame(width: 250, height: 200)
                                    .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 12))
                            }
                            .hoverEffect()
                        }
                        .padding(.horizontal)
                    }
                    .frame(height: 220)
                }
                .padding()
            }
        }
        .onDisappear {
            stopSound()
        }
    }
    
    //MARK: - Audio Handling
    private func playSound(for animal: Animal) {
        guard let soundURL = Bundle.main.url(forResource: animal.soundFileName, withExtension: "mp3") else {
            print("Sound file not found.")
            return
        }
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
            configureAudioExperience(for: .inline)
            audioPlayer?.play()
        } catch {
            print("Could not load file: \(error).")
        }
    }
    
    private func stopSound() {
        audioPlayer?.stop()
    }
    
    
    //MARK: - Audio Configuration, Spatial Audio
    private func configureAudioExperience(for presentation: Presentation) {
#if os(visionOS)
        do {
            let experience: AVAudioSessionSpatialExperience
            switch presentation {
            case .inline:
                experience = .headTracked(soundStageSize: .small, anchoringStrategy: .automatic)
            case .fullWindow:
                experience = .headTracked(soundStageSize: .large, anchoringStrategy: .automatic)
            }
            try AVAudioSession.sharedInstance().setIntendedSpatialExperience(experience)
        } catch {
            print("Unable to set the intended spatial experience. \(error.localizedDescription)")
        }
#endif
    }
    
    //MARK: - Conservation Status Color Handling
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
    
    //MARK: - Presentation Enum, Spatial Audio
    private enum Presentation {
        case inline
        case fullWindow
    }
}
