//
//  ContentView.swift
//  Melliflluous
//
//  Created by daniel stefanus christiawan on 26/07/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MusicView()
                .tabItem {
                    Label("Music", systemImage: "music.note")
                }
            
            GenreView(title: "My Favorite", cover: "MyFav")
                .tabItem {
                    Label("Favorite", systemImage: "heart.fill")
                }
        }
        .onAppear() {
            UITabBar.appearance().barTintColor = .black
            UITabBar.appearance().backgroundColor = .black
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
