//
//  ConservationsData.swift
//  Wilder
//
//  Created by Damian Perez on 2/9/24.
//  Abstract: Data of local conservation centers: name, location, description, website, and image. 
//

import Foundation

struct ConservationsData {
    static let centers: [ConservationCenter] = [
        ConservationCenter(
            name: "Marine Science Institute",
            location: "Redwood City, California",
            description: "Dedicated to fostering environmental stewardship and science education, focusing on marine life conservation.",
            website: "https://www.sfbaymsi.org",
            image: "msi"
        ),
        ConservationCenter(
            name: "Midpeninsula Regional Open Space District",
            location: "Los Altos, California",
            description: "Aims to protect, restore, and provide public access to the natural landscapes of the SF Peninsula and Santa Cruz Mountains.",
            website: "https://www.openspace.org",
            image: "midpeninsula"
        ),
        ConservationCenter(
            name: "Monterey Bay Aquarium",
            location: "Monterey, California",
            description: "Renowned for inspiring ocean conservation, the aquarium educates on the importance of marine life and habitats.",
            website: "https://www.montereybayaquarium.org",
            image: "monterey"
        ),
        ConservationCenter(
            name: "UC Botanical Garden at Berkeley",
            location: "Berkeley, California",
            description: "Focuses on the conservation of native California flora, housing over 2,000 rare or endangered taxa. Engages in seed storage, propagation, and reintroduction projects.",
            website: "https://botanicalgarden.berkeley.edu",
            image: "berkeley"
        ),
        ConservationCenter(
            name: "Save The Bay",
            location: "Oakland, California",
            description: "Works on wetland restoration, pollution prevention, and smart development to protect the San Francisco Bay's health and natural beauty.",
            website: "https://www.savesfbay.org",
            image: "savethebay"
        ),
        ConservationCenter(
            name: "The Nature Conservancy in California",
            location: "San Francisco, California",
            description: "Addresses environmental threats through conservation efforts across California's diverse ecosystems, aiming to protect critical habitats and combat climate change impacts.",
            website: "https://www.nature.org",
            image: "natureconservancy"
        ),
        ConservationCenter(
            name: "Conservation Lands Network",
            location: "San Francisco Bay Area, California",
            description: "Preserves biodiversity and ecological integrity in the Bay Area through strategic land conservation and stewardship, aiming to conserve millions of acres by 2050.",
            website: "https://www.bayarealands.org",
            image: "landsnetwork"
        ),
        ConservationCenter(
            name: "Pacific Beach Coalition",
            location: "Pacifica, California",
            description: "Dedicated to ocean and coastal conservation, focusing on habitat restoration, cleanups, and educational programs to foster environmental stewardship.",
            website: "https://www.pacificbeachcoalition.org",
            image: "pacificbeach"
        ),
        ConservationCenter(
            name: "Sustainable Conservation",
            location: "San Francisco, California",
            description: "Implements practical solutions for land, air, and water conservation, including sustainable agricultural practices and pollution reduction efforts.",
            website: "https://www.suscon.org",
            image: "sustainablecons"
        ),
        ConservationCenter(
            name: "San Francisco Zoo",
            location: "San Francisco, California",
            description: "The San Francisco Zoo is committed to connecting people with wildlife, inspiring caring for nature, and advancing conservation action.",
            website: "https://www.sfzoo.org",
            image: "sfzoo"
        ),
        ConservationCenter(
            name: "San Diego Zoo",
            location: "San Diego, California",
            description: "Renowned worldwide for its conservation efforts, San Diego Zoo is home to over 3,500 animals across 650 species and subspecies.",
            website: "https://zoo.sandiegozoo.org",
            image: "sdzoo"
        ),
        ConservationCenter(
            name: "Los Angeles Zoo and Botanical Gardens",
            location: "Los Angeles, California",
            description: "The LA Zoo emphasizes conservation through breeding endangered species, research, and educating the public on animal conservation.",
            website: "https://www.lazoo.org",
            image: "lazoo"
        )
    ]
}
