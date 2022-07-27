//
//  CardView.swift
//  Melliflluous
//
//  Created by daniel stefanus christiawan on 27/07/22.
//

import SwiftUI

struct CardView: View {
    let image: String
    let title: String
    
    var body: some View {
        VStack {
            Image(image)
                .resizable()
                .frame(width: 150, height: 150)
            
            HStack {
                Text(title)
                    .font(.system(size: 24))
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(Color(red: 254/255, green: 255/255, blue: 255/255))
                    .frame(width: 141, height: 29, alignment: .leading)
                    .padding([.trailing,.bottom,.top])
            }
        }
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(image: "Classical", title: "Classical")
    }
}
