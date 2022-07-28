//
//  ModalView.swift
//  Melliflluous
//
//  Created by daniel stefanus christiawan on 28/07/22.
//

import SwiftUI

struct ModalView: View {
    @Binding var isShowing: Bool
    var minutes: [String] = ["10", "15", "20", "25", "30", "35", "40", "45", "50", "55", "60"]
    @State private var selectedMinutes: String = "10"
    var music: Album
    
    var body: some View {
        NavigationView{
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
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
            .ignoresSafeArea()
            .animation(.easeInOut(duration: 3), value: 1)
        }
    }
    
    var mainView: some View {
        VStack {
            ZStack {
                VStack (spacing: 20) {
                    NavigationLink(destination: MusicPlayingView(title: DummyData.musicDummy.title, author: DummyData.musicDummy.author)) {
                        HStack {
                            Spacer()
                            Button("Start") {
                                isShowing = false
                            }
                            .padding()
                        }
                        .frame(maxWidth: .infinity)
                    }
                    

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
        ModalView(isShowing: .constant(true), music: DummyData.musicDummy)
    }
}