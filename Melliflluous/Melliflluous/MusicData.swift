//
//  MusicData.swift
//  Melliflluous
//
//  Created by daniel stefanus christiawan on 27/07/22.
//

import Foundation

struct Album: Identifiable {
    let id = UUID()
    let title: String
    let author: String
    let url: String
}

struct DummyData {
    static var myFav = [
        Album(title: "Ode to Joy", author: "Beethoven", url: "www.google.com"),
        Album(title: "Nocturnes", author: "Choppin", url: "www.google.com"),
        Album(title: "For Elise", author: "Beethoven", url: "www.google.com"),
        Album(title: "Symphony No. 5", author: "Beethoven", url: "www.google.com"),
        Album(title: "Mazurkas", author: "Choppin", url: "www.google.com"),
    ]
    static var musicDummy = Album(title: "It's my life", author: "Bon Jovi", url: "www.google.com")
}
