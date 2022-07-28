//
//  SwiftUIView.swift
//  Melliflluous
//
//  Created by daniel stefanus christiawan on 28/07/22.
//

import SwiftUI

struct TableView: View {
    @State var musicList: [Album]
    @State var musicTitle: String
    @State var musicAuthor: String
    @State var isFavorite: Bool
    @State var heartLogo: String
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                HStack {
                    if !musicList.isEmpty {
                        VStack {
                            Text(musicTitle)
                                .foregroundColor(Color(red: 254/255, green: 255/255, blue: 255/255))
                                .fontWeight(.semibold)
                                .font(.system(size: 30))
                                .frame(width: 244, height: 43, alignment: .leading)
                                .padding()
                            
                            Text(musicAuthor)
                                .foregroundColor(Color(red: 254/255, green: 255/255, blue: 255/255))
                                .fontWeight(.semibold)
                                .font(.system(size: 21))
                                .frame(width: 244, height: 30, alignment: .leading)
                                .padding(.bottom)
                        }
                        
                        Button() {
                            if isFavorite {
                                isFavorite = false
                                heartLogo = "heart"
                            }
                            else {
                                isFavorite = true
                                heartLogo = "heart.fill"
                            }
                            
                        } label: {
                            Image(systemName: "heart")
                                .resizable()
                                .frame(width: 36, height: 36)
                                .foregroundColor(Color(red: 254/255, green: 255/255, blue: 255/255))
                                .padding()
                        }
                    }
                    else {
                        Text("No internet connection!")
                    }
                }
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var musicList = DummyData.myFav
    static var musicTitle = "Xoxo"
    static var musicAuthor = "asdf"
    static var isFavorite = false
    static var heartLogo = "heart"
    
    
    static var previews: some View {
        TableView(musicList: musicList, musicTitle: musicTitle, musicAuthor: musicAuthor, isFavorite: isFavorite, heartLogo: heartLogo)
    }
}
