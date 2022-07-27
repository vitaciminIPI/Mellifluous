//
//  GenreCardData.swift
//  Melliflluous
//
//  Created by daniel stefanus christiawan on 27/07/22.
//

import Foundation

struct Card: Identifiable {
    let id = UUID()
    let image: String
    let title: String
}

struct GenreCard {
    static var cards = [
        Card(image: "Classical", title: "Classical"),
        Card(image: "Instrumental", title: "Instrumental"),
        Card(image: "Jazz", title: "Jazz"),
        Card(image: "Lofi", title: "Lofi")
    ]
}
