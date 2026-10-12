# Wilder

Wilder is a visionOS app for learning about wildlife, built in SwiftUI as my Swift Student Challenge 2024 submission.

## What's in it

The app has four tabs:

- **Spotlight** features one animal each day. The animal is picked from the day of the year, so it changes daily with no stored state.
- **Wild Guide** is a searchable split view of 21 animals. Each entry shows class, family, ecosystem, conservation status and fun facts. Six animals have a recorded call that plays with head-tracked spatial audio.
- **Conservations** lists 12 California conservation centers. A segmented control filters them by Bay Area or Southern California.
- **Spotter** is a timed emoji memory game. Twelve face-down cards hide six pairs of animals.

## How it works

- **Data lives apart from the views.** `AnimalData` and `ConservationsData` are static arrays of plain structs. To add an animal, you add one entry to `AnimalData` and its emoji to the `Animal.emoji` switch. The views read from there and need no changes.
- **Conservation status is an enum.** `ConservationStatus` is a closed set, so the color mapping in the detail views is an exhaustive `switch`. If a new status is added, the compiler flags every place that needs to handle it.
- **The game rules live in one observable model.** `MatchingGameModel` is an `ObservableObject` that owns the cards and the matching rules. It also checks for completion. `MatchingGameView` only renders the cards and runs the timer. When the deck is dealt, animals that share an emoji are skipped, so no two pairs look the same.

## Running it

1. Open `Wilder.xcodeproj` in Xcode.
2. Select the `Wilder` scheme and an Apple Vision Pro simulator.
3. Build and run (⌘R).

Requirements (inferred from the project file): Xcode 15.2 or later with the visionOS SDK; the deployment target is visionOS 1.0.

Everything is bundled locally, so no network connection is needed.

## Challenge constraints

The Swift Student Challenge required submissions to work offline. For that reason, the **Visit Website** buttons in Conservations are disabled. Each center's URL is still kept in `ConservationsData`.

## Status

This is the Swift Student Challenge 2024 submission, with small fixes and cleanups made since then. It is not under active development.
