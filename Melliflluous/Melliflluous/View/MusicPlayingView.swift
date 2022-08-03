//
//  MusicPlayingView.swift
//  Melliflluous
//
//  Created by daniel stefanus christiawan on 27/07/22.
//

import SwiftUI

struct MusicPlayingView: View {
    let title: String
    let author: String
    @State var timer = 10
    @State var isPlaying = true
    @State var isFavorite = false
    @State var heartLogo = "heart"
    @State var playLogo = "pause.fill"
    @Binding var showPlayingMusic: Bool
    
    var body: some View {
       ZStack {
           if showPlayingMusic {
               Image("BgSound")
                   .resizable()
                   .ignoresSafeArea()
               
               blurView()
                   .ignoresSafeArea()
               
               VStack {
                   //MARK: - Minimize Button
                   HStack (alignment: .top) {
                       Button() {
                           
                       } label: {
                           Image(systemName: "chevron.down")
                               .resizable()
                               .frame(width: 29, height: 19)
                               .foregroundColor(Color(red: 255/255, green: 254/255, blue: 254/255))
                               .padding()
                       }
                       
                   }
                   .frame(minWidth: 0, idealWidth: .infinity, maxWidth: .infinity, minHeight: 0, idealHeight: 30, maxHeight: 30, alignment: .leading)
                   
                   Spacer()
                   
                   //MARK: - Timer
                   VStack (spacing: 20) {
                       Text(String(timer))
                           .fontWeight(.bold)
                           .foregroundColor(Color(red: 255/255, green: 254/255, blue: 254/255))
                           .frame(width: 88, height: 36, alignment: .center)
                           .font(.system(size: 30))
                       
                       Button("Cancel") {
                           /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                       }
                       .frame(width: 84, height: 50, alignment: .center)
                       .foregroundColor(Color(red: 255/255, green: 254/255, blue: 254/255))
                       .background(Color(red: 72/255, green: 72/255, blue: 74/255))
                       .cornerRadius(10)
                       .padding()
                   }
                   
                   Spacer()
                   
                   //MARK: - Title Song
                   HStack {
                       Spacer()
                       
                       VStack {
                           Text(title)
                               .font(.system(size: 36))
                               .foregroundColor(Color(red: 255/255, green: 254/255, blue: 254/255))
                               .fontWeight(.bold)
                               .frame(width: 298, height: 43, alignment: .leading)
                           Text(author)
                               .font(.system(size: 24))
                               .foregroundColor(Color(red: 255/255, green: 254/255, blue: 254/255))
                               .fontWeight(.semibold)
                               .frame(width: 298, height: 43, alignment: .leading)
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
                           Image(systemName: heartLogo)
                               .resizable()
                               .frame(width: 36, height: 36)
                               .foregroundColor(Color(red: 254/255, green: 255/255, blue: 255/255))
                               .padding()
                       }
                   }
                   
                   Spacer()
                       .frame(height: 50)
                   
                   //MARK: - Play Music Button
                   HStack (spacing: 80) {
                       Button() {
                           
                       } label: {
                           Image(systemName: "backward.fill")
                               .resizable()
                               .foregroundColor(Color(red: 255/255, green: 254/255, blue: 254/255))
                               .frame(width: 51, height: 43)
                       }
                       
                       
                       Button() {
                           if isPlaying {
                               isPlaying = false
                               playLogo = "play.fill"
                           }
                           else {
                               isPlaying = true
                               playLogo = "pause.fill"
                           }
                       } label: {
                           Image(systemName: playLogo)
                               .resizable()
                               .foregroundColor(Color(red: 255/255, green: 254/255, blue: 254/255))
                               .frame(width: 30, height: 43)
                       }

                       Button() {
                           
                       } label: {
                           Image(systemName: "forward.fill")
                               .resizable()
                               .foregroundColor(Color(red: 255/255, green: 254/255, blue: 254/255))
                               .frame(width: 51, height: 43)
                       }
                   }
                   .frame(minWidth: 0, idealWidth: .infinity, maxWidth: .infinity)
                   
                   Spacer()
                       .frame(height: 100)
               }
           }
//          .navigationBarTitle("")
//          .navigationBarHidden(true)
//          .navigationBarBackButtonHidden(true)
           }
            
    }
}

struct MusicPlayingView_Previews: PreviewProvider {
    static var previews: some View {
        MusicPlayingView(title: "Ode to Joy", author: "Beethoven", showPlayingMusic: .constant(true))
    }
}
