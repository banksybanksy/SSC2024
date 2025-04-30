//
//  MatchingGameModel.swift
//  Wilder
//
//  Created by Damian Perez on 2/19/24.
//  Abstract: Logic for managing the matching game state.
//

import Foundation

class MatchingGameModel: ObservableObject {
    @Published var cards: [MatchingCard] = []
    @Published var gameFinished = false
    
    //MARK: - Card Selection Logic
    private var indexOfTheOneAndOnlyFaceUpCard: Int? {
        didSet {
            if indexOfTheOneAndOnlyFaceUpCard == nil {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    self.flipDownUnmatched()
                }
            }
        }
    }
    
    var shouldDisableCardInteraction: Bool {
        cards.filter({ $0.isFaceUp && !$0.isMatched }).count >= 2
    }
    
    //MARK: - Choosing a Card
    func choose(_ card: MatchingCard) {
        if let chosenIndex = cards.firstIndex(where: { $0.id == card.id }),
           !cards[chosenIndex].isFaceUp,
           !cards[chosenIndex].isMatched,
           !gameFinished {
            
            cards[chosenIndex].isFaceUp = true
            
            if let potentialMatchIndex = indexOfTheOneAndOnlyFaceUpCard {
                if cards[chosenIndex].animal.name == cards[potentialMatchIndex].animal.name {
                    cards[chosenIndex].isMatched = true
                    cards[potentialMatchIndex].isMatched = true
                } else {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.75) {
                        self.cards[chosenIndex].isFaceUp = false
                        self.cards[potentialMatchIndex].isFaceUp = false
                    }
                }
                indexOfTheOneAndOnlyFaceUpCard = nil
            } else {
                indexOfTheOneAndOnlyFaceUpCard = chosenIndex
            }
            checkForGameCompletion()
        }
    }
    
    //MARK: - Game Management
    private func flipDownUnmatched() {
        for index in cards.indices where !cards[index].isMatched {
            cards[index].isFaceUp = false
        }
    }
    
    private func checkForGameCompletion() {
        gameFinished = cards.allSatisfy { $0.isMatched }
    }
    
    //MARK: - Resetting the Game
    func resetGame() {
        cards.removeAll()
        gameFinished = false
        indexOfTheOneAndOnlyFaceUpCard = nil
        
        let selectedAnimals = AnimalData.animals.shuffled().prefix(6)
        for animal in selectedAnimals {
            let card1 = MatchingCard(animal: animal)
            let card2 = MatchingCard(animal: animal)
            cards.append(contentsOf: [card1, card2])
        }
        
        cards.shuffle()
    }
}

struct MatchingCard: Identifiable {
    var id = UUID()
    var animal: Animal
    var isFaceUp: Bool = false
    var isMatched: Bool = false
    
    init(animal: Animal) {
        self.animal = animal
    }
}
