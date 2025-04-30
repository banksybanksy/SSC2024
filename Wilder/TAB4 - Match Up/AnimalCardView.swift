//
//  AnimalCardView.swift
//  Wilder
//
//  Created by Damian Perez on 2/19/24.
//  Abstract: View for displaying a game card.
//

import SwiftUI

//MARK: - AnimalCardView Struct
struct AnimalCardView: View {
    @Binding var card: MatchingCard
    var game: MatchingGameModel
    
    //MARK: - Body
    var body: some View {
        ZStack {
            //MARK: Card Front
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 12)
                    .fill(card.animal.emojiBackgroundColor)
                Text(card.animal.emoji)
                    .font(.system(size: 80))
            } else {
                //MARK: Card Back
                RoundedRectangle(cornerRadius: 12)
                    .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 12))
            }
        }
        .aspectRatio(2/3, contentMode: .fit)
        .opacity(card.isMatched ? 0.5 : 1.0)
        .modifier(ConditionalHoverEffect(condition: !card.isMatched))
        //MARK: - Card Interaction
        .onTapGesture {
            withAnimation {
                game.choose(card)
            }
        }
    }
}

//MARK: - ConditionalHoverEffect Modifier
struct ConditionalHoverEffect: ViewModifier {
    var condition: Bool
    
    func body(content: Content) -> some View {
        if condition {
            content.hoverEffect()
        } else {
            content
        }
    }
}
