//
//  ModalView.swift
//  Melliflluous
//
//  Created by daniel stefanus christiawan on 28/07/22.
//

import SwiftUI

struct ModalView: View {
    @Binding var isShowing: Bool
    @State private var selectedMinutes: String = "10"
    @State var playingMusic: Bool = false
    var minutes: [String] = ["10", "15", "20", "25", "30", "35", "40", "45", "50", "55", "60"]
    var music: Music
    
    var body: some View {
        ZStack (alignment: .bottom) {
            if isShowing {
                Color.black
                    .opacity(0.9)
                    .ignoresSafeArea()
                    .onTapGesture {
                        isShowing = false
                    }
                mainView
                    .transition(.move(edge: .bottom))
            }
            
//            if playingMusic {
//                MusicPlayingView(title: music.title, author: music.author, showPlayingMusic: $playingMusic)
//            }
 
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .ignoresSafeArea()
        .animation(.easeInOut(duration: 3), value: 1)
    }
    
    var mainView: some View {
        VStack {
            ZStack {
                VStack (spacing: 20) {
                    HStack {
                        Spacer()
                        Button("Start") {
                            isShowing = false
                            playingMusic.toggle()
                        }
                        .foregroundColor(.blue)
                        .padding()
                    }
                    .frame(maxWidth: .infinity)

                    Text("How Long do you want to focus?")
                        .font(.system(size: 21))
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 255/255, green: 254/255, blue: 254/255))

                    Picker("Choose time in minutes", selection: $selectedMinutes) {
                        ForEach(minutes, id: \.self) {
                            Text($0)
                                .font(.system(size: 30))
                                .foregroundColor(Color(red: 255/255, green: 254/255, blue: 254/255))
                        }
                    }
                }
                .pickerStyle(.wheel)
                .padding()
            }
            .frame(maxHeight: .infinity)
        }
        .frame(height: 400)
        .frame(maxWidth: .infinity)
        .background(Color(red: 18/255, green: 19/255, blue: 20/255))
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
//        TestView()
        ModalView(isShowing: .constant(true), playingMusic: true, music: DummyData.musicDummy)
    }
}
