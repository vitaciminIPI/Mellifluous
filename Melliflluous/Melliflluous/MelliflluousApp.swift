//
//  MelliflluousApp.swift
//  Melliflluous
//
//  Created by daniel stefanus christiawan on 26/07/22.
//

import SwiftUI
import Firebase

@main
struct MelliflluousApp: App {
    let data = MusicManager()
    
    init() {
        FirebaseApp.configure()
        data.fetchData()
    }
    
    var body: some Scene {
        WindowGroup {
//            SplashScreenView()
//            TimerView()
            //it works for fetch data
//            TestView(data: data)
            TestView()
//            MusicPlayingView(title: "asdfasdf", author: "asdfaf")
        }
    }
}
