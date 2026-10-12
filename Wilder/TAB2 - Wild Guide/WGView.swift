//
//  WGView.swift
//  Wilder
//
//  Created by Damian Perez on 2/5/24.
//  Abstract: Searchable (scroll to top to unveil searchbar) list of animals with important facts.
//

import SwiftUI

struct WGView: View {
    @EnvironmentObject private var viewModel: AnimalViewModel
    @State private var searchText = ""
    @State private var selectedAnimal: Animal?
    @State private var currentEmojiIndex = 0
    @State private var emojiBackgroundColor: Color = .clear
    private let timer = Timer.publish(every: 2, on: .main, in: .common).autoconnect()
    
    private var filteredAnimals: [Animal] {
        if searchText.isEmpty {
            return viewModel.animals
        } else {
            return viewModel.animals.filter { $0.name.localizedCaseInsensitiveContains(searchText) }
        }
    }
    
    var body: some View {
        NavigationSplitView {
            VStack(spacing: 0) {
                List(filteredAnimals, selection: $selectedAnimal) { animal in
                    Text(animal.name).tag(animal)
                }
                .listStyle(.plain)
            }
        } detail: {
            if let selectedAnimal = selectedAnimal {
                WGDetailView(animal: selectedAnimal)
            } else {
                defaultDetailView
            }
        }
        .onDisappear {
            timer.upstream.connect().cancel()
        }
        .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always))
        .navigationTitle("Wild Guide")
    }
    
    private var defaultDetailView: some View {
        VStack {
            Spacer()
            if !viewModel.animals.isEmpty {
                Text(viewModel.animals[currentEmojiIndex].emoji)
                    .font(.system(size: 100))
                    .frame(width: 150, height: 150)
                    .background(emojiBackgroundColor)
                    .clipShape(Circle())
                    .padding()
                    .accessibilityHidden(true)
                    .transition(.scale.combined(with: .opacity))
                    .onReceive(timer) { _ in
                        updateEmojiAndBackground()
                    }
                    .onAppear {
                        emojiBackgroundColor = viewModel.animals[currentEmojiIndex].emojiBackgroundColor
                    }
            } else {
                Text("No Animals to Display").foregroundColor(.secondary)
            }
            Text("Discover the Wilderness")
                .font(.headline)
                .fontWeight(.bold)
                .padding(.bottom, 200)
            Spacer()
        }
    }
    
    private func updateEmojiAndBackground() {
        withAnimation(.easeInOut(duration: 1.0)) {
            currentEmojiIndex = (currentEmojiIndex + 1) % viewModel.animals.count
            emojiBackgroundColor = viewModel.animals[currentEmojiIndex].emojiBackgroundColor
        }
    }
}

//MARK: - Animal Model Extension
extension Animal {
    var emoji: String {
        switch name.lowercased() {
        case "lion": return "🦁"
        case "polar bear": return "🐻‍❄️"
        case "flamingo": return "🦩"
        case "giraffe": return "🦒"
        case "koala": return "🐨"
        case "jaguar": return "🐆"
        case "vulture": return "🦅"
        case "orangutan": return "🦧"
        case "mangabey": return "🐒"
        case "gorilla": return "🦍"
        case "capybara": return "🐹"
        case "camel": return "🐪"
        case "serval": return "🐆"
        case "koi fish": return "🐟"
        case "figeater beetle": return "🪲"
        case "elephant": return "🐘"
        case "grizzly bear": return "🐻"
        case "zebra": return "🦓"
        case "bontebok": return "🦌"
        default: return "🐾"
        }
    }
    
    var emojiBackgroundColor: Color {
        switch name.lowercased() {
        case "lion", "tiger", "fox", "jaguar", "serval": return Color.orange
        case "polar bear": return Color.white
        case "gerenuk", "giraffe", "camel", "bontebok": return Color.yellow
        case "flamingo": return Color.pink
        case "koala", "gorilla", "orangutan", "mangabey": return Color.gray
        case "vulture", "grizzly bear": return Color.brown
        case "capybara", "tasmanian devil": return Color.gray
        case "koi fish": return Color.red
        case "figeater beetle": return Color.green
        case "elephant": return Color.gray
        case "zebra": return Color.black
        default: return Color.gray.opacity(0.5)
        }
    }
}
