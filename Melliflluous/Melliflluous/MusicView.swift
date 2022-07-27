//
//  MusicView.swift
//  Melliflluous
//
//  Created by daniel stefanus christiawan on 26/07/22.
//

import SwiftUI

struct MusicView: View {
    private let columns: [GridItem] = [
        GridItem(.flexible(minimum: 150)),
        GridItem(.flexible(minimum: 150))
    ]
    private let height = 191
    private let cards: [Card] = GenreCard.cards
    
    var body: some View {
        ZStack {
            Image("Background")
                .ignoresSafeArea()
            
            VStack (spacing: 20) {
                //MARK: - Streak
                HStack {
                    Text("Streak: ")
                        .foregroundColor(Color(red: 255/255, green: 254/255, blue: 254/255))
                        .font(.system(size: 24))
                        .fontWeight(.medium)
                    
                    Text("10 🔥")
                        .foregroundColor(Color(red: 255/255, green: 254/255, blue: 254/255))
                        .font(.system(size: 30))
                        .fontWeight(.medium)
                        .padding()
                    
                    Spacer()
                        .frame(width: 120)
                }
                .frame(alignment: .trailing)
                
                //MARK: - Genre Label
                Text("Choose Your Genre")
                    .foregroundColor(Color(red: 255/255, green: 254/255, blue: 254/255))
                    .font(.system(size: 36))
                    .fontWeight(.medium)
                    .frame(width: 312, height: 43, alignment: .leading)
                    .padding([.bottom, .top, .trailing])
                
                //MARK: - CardView
                LazyVGrid (columns: columns, spacing: 16) {
                    ForEach(cards) { card in
                        CardView(image: card.image, title: card.title)
                    }
                }
            }
        }
    }
}

struct MusicView_Previews: PreviewProvider {
    static var previews: some View {
        MusicView()
    }
}
