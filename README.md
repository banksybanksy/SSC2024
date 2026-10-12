# Wilder - Swift Student Challenge 2024 Submission

## Overview
Wilder is an educational visionOS app designed to raise awareness about the diverse and beautiful fauna of our planet. The app aims to educate users about various animal species, their habitats, conservation statuses, and local conservation efforts in California.

## Features

### Spotlight
The Spotlight tab showcases a featured animal daily with beautiful imagery and essential information. Each day, a new animal is automatically selected based on the day of the year, providing users with a continuous learning experience about different species.

### Wild Guide
A comprehensive, searchable catalog of animals with detailed information including:
- Classification and family
- Ecosystem
- Fun facts
- Conservation status
- Sound clips for six animals (Lion, Jaguar, Orangutan, Serval, Elephant, Grizzly Bear)

The split-view interface allows users to browse the list while viewing detailed information about their selected animal. Before an animal is selected, the detail pane cycles through animal emoji.

### Conservations
Highlights conservation centers in California, with a filter for All, Bay Area and Southern California. Each entry includes:
- Center name and image
- Description of their conservation efforts
- Location information
- Website link (disabled in the submission as per Swift Student Challenge constraints)

### Spotter (Match Up Game)
A timed memory game: twelve face-down cards hide six pairs of animal emoji, and the player flips two at a time to find every pair.

## Running the App
1. Open `Wilder.xcodeproj` in Xcode 15.2 or later with the visionOS SDK installed.
2. Select the `Wilder` scheme and an Apple Vision Pro simulator (the project targets visionOS 1.0).
3. Build and run (⌘R). Everything is bundled locally; no network connection is needed.

## Design Philosophy
The app was designed with several key principles in mind:

1. **Educational Value**: Providing accurate and engaging information about wildlife
2. **Accessibility**: Creating an intuitive interface that works for users of all ages
3. **Visual Appeal**: Using high-quality images and a clean, modern UI to showcase the beauty of wildlife
4. **Engagement**: Incorporating interactive elements like the daily spotlight and matching game
5. **Conservation Awareness**: Highlighting conservation statuses and local conservation efforts

## Technical Implementation
- Built with SwiftUI for a modern, responsive interface
- Utilizes environment objects for state management across the app
- Implements custom animations and transitions for a polished user experience
- Features a data-driven architecture with separate model, view, and data files
- Uses Swift's strong type system with enums for conservation statuses

## Inspiration
This project was inspired by Apple's environmental conservation efforts and aims to contribute to raising awareness about wildlife conservation through education and engagement.

---

*Submitted by Damian Perez for the Swift Student Challenge 2024*
