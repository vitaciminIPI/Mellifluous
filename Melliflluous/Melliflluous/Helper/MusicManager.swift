//
//  MusicManager.swift
//  Melliflluous
//
//  Created by daniel stefanus christiawan on 01/08/22.
//

import Foundation
import Firebase

class MusicManager: ObservableObject {
    @Published public var album = [Album] ()

    func fetchData() {
        let db = Firestore.firestore()
        let docRef = db.collection("genres")
        
        docRef.getDocuments { snap, error in
            var songsArr = [Song]()
            if error == nil {
                for doc in snap!.documents {
                    let songs = doc.data()["songs"] as? [String : [String : String]]
                    
                    if let songs = songs {
                        for song in songs {
                            let author = song.value["author"] ?? "Error"
                            let title = song.value["title"] ?? "Error"
                            let file = song.value["file"] ?? "Error"
                            print(author)
                            print(title)
                            print(file)
                            songsArr.append(Song(title: title, author: author, file: file))
                        }
                    }
                    self.album.append(Album(numberAlbum: "1", songs: songsArr))
                }
            } else {
                print(error ?? "")
            }
        }
    }
    
}
