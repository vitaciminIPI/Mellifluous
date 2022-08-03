//
//  MusicDataModel.swift
//  Melliflluous
//
//  Created by daniel stefanus christiawan on 01/08/22.
//

import Foundation

struct Album {
    let numberAlbum: String
    let songs: [Song]
}

struct Song {
    let title: String
    let author: String
    let file: String
}
