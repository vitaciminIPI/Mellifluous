//
//  FavoriteView.swift
//  Melliflluous
//
//  Created by daniel stefanus christiawan on 26/07/22.
//

import SwiftUI

struct GenreView: View {
    let title: String
    @State var isFavorite: Bool = false
    @State var heart: String = "heart"
    var musicList: [Album] = DummyData.myFav
    var body: some View {
        ZStack {
            Color(red: 18/255, green: 19/255, blue: 20/255)
                .ignoresSafeArea()
            
            VStack {
                VStack {
                    Image("MyFav")
                        .resizable()
                        .frame(width: 150, height: 150, alignment: .center)
                    
                    Text(title)
                        .font(.system(size: 36))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                    
                    Spacer()
                        .frame(height: 5)
//                        .frame(minHeight: 50, maxHeight: 350)
                    
                }
                .padding()
                
                ScrollView (showsIndicators: false) {
                    ForEach(musicList) { music in
                        HStack {
                            if !musicList.isEmpty {
                                VStack {
                                    Text(music.title)
                                        .foregroundColor(Color(red: 254/255, green: 255/255, blue: 255/255))
                                        .fontWeight(.semibold)
                                        .font(.system(size: 30))
                                        .frame(width: 244, height: 43, alignment: .leading)
                                        .padding()
                                    
                                    Text(music.author)
                                        .foregroundColor(Color(red: 254/255, green: 255/255, blue: 255/255))
                                        .fontWeight(.semibold)
                                        .font(.system(size: 21))
                                        .frame(width: 244, height: 30, alignment: .leading)
                                        .padding(.bottom)
                                }
                                
                                Image(systemName: heart)
                                    .resizable()
                                    .frame(width: 36, height: 36)
                                    .foregroundColor(Color(red: 254/255, green: 255/255, blue: 255/255))
                                    .padding()
                                    .onTapGesture {
                                        if isFavorite {
                                            self.isFavorite = false
                                            self.heart = "heart"
                                        }
                                        else {
                                            self.isFavorite = true
                                            self.heart = "heart.fill"
                                        }
                                    }
                            }
                            else {
                                Text("No internet connection!")
                            }
                        }
                    }
                }
                .onAppear {
                    UIScrollView.appearance().bounces = false
                }
                .frame(minWidth:0, idealWidth: .infinity, maxWidth: .infinity, minHeight: 0, idealHeight: .infinity, maxHeight: .infinity)
                .background(Color.black)
                .padding([.top])
            }
            .frame(minWidth: 0, idealWidth: .infinity, maxWidth: .infinity, alignment: .center)
        }
    }
}

struct FavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        GenreView(title: "My Favorite")
    }
}
