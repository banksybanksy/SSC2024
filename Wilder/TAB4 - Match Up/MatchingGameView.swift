//
//  MatchingGameView.swift
//  Wilder
//
//  Created by Damian Perez on 2/19/24.
//  Abstract: Interactive view interface for a memory game.
//

import SwiftUI

struct MatchingGameView: View {
    @StateObject var game = MatchingGameModel()
    @State private var timeElapsed = 0
    @State private var gameStarted = false
    @State private var showAlert = false
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            if gameStarted {
                gameView
            } else {
                introductoryView
            }
        }
        .toolbar {
            if gameStarted {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Restart") {
                        restartGame()
                    }
                }
            }
        }
        .onAppear {
            game.resetGame()
        }
        // MARK: - Completed Game Message
        .alert("Congratulations!", isPresented: $showAlert) {
            Button("Restart", action: restartGame)
            Button("Quit", action: {
                restartGame()
                gameStarted = false
            })
        } message: {
            Text("You've completed the game in \(formattedTime). Great job!")
        }
    }
    
    //MARK: - Introductory View
    var introductoryView: some View {
        VStack(spacing: 20) {
            Text("Up for a Memory Game?")
                .font(.largeTitle)
                .fontWeight(.bold)

            VStack(alignment: .center, spacing: 8) {
                ForEach(bulletPoints.indices, id: \.self) { index in
                    HStack {
                        Text("•")
                        Text(bulletPoints[index])
                    }
                    .font(.body)
                    .fontWeight(.semibold)
                    .opacity(gameStarted ? 0 : 1)
                }
            }
            .padding()
            
            Button("Play") {
                withAnimation {
                    gameStarted = true
                }
            }
            .padding()
        }
        .padding()
    }
    
    private var bulletPoints: [String] = [
        "Match pairs of cards to win.",
        "Try to remember the positions of different animals.",
        "Be quick, you're being timed!"
    ]
    
    //MARK: - Game View
    var gameView: some View {
        VStack {
            if !game.gameFinished {
                Text("Elapsed: \(formattedTime)")
                    .font(.headline)
                    .padding()
                    .onReceive(timer) { _ in
                        if !game.gameFinished {
                            timeElapsed += 1
                        } else {
                            showAlert = true
                        }
                    }
            }
            
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 200))], spacing: 7) {
                    ForEach(game.cards.indices, id: \.self) { index in
                        AnimalCardView(card: $game.cards[index], game: game)
                            .aspectRatio(2/3, contentMode: .fit)
                            .onTapGesture {
                                game.choose(game.cards[index])
                            }
                    }
                }
                .padding()
            }
        }
    }
    
    //MARK: - Helper Methods
    func restartGame() {
        gameStarted = false
        game.resetGame()
        timeElapsed = 0
    }
    
    //MARK: - Time Formatting
    var formattedTime: String {
        let minutes = (timeElapsed % 3600) / 60
        let seconds = timeElapsed % 60
        var timeComponents = [String]()
        
        if minutes > 0 {
            let minutePart = minutes == 1 ? "1 minute" : "\(minutes) minutes"
            timeComponents.append(minutePart)
        }
        
        if seconds > 0 || timeComponents.isEmpty {
            let secondPart = seconds == 1 ? "1 second" : "\(seconds) seconds"
            timeComponents.append(secondPart)
        }
        
        return timeComponents.joined(separator: ", ")
    }
}

#Preview {
    NavigationStack {
        MatchingGameView()
    }
}
