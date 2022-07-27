//
//  SplashScreen View.swift
//  Melliflluous
//
//  Created by daniel stefanus christiawan on 26/07/22.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            ContentView()
        }
        else {
            ZStack {
                Color(red: 16/255, green: 16/255, blue: 16/255)
                    .ignoresSafeArea()
                VStack {
                    Image(systemName: "hare.fill")
                        .font(.system(size: 80))
                        .foregroundColor(.red)
                    
                    Spacer()
                        .frame(height: 16)
                    
                    Text("Mellifluous")
                        .font(.system(size: 50))
                        .foregroundColor(Color(red: 255/255, green: 254/255, blue: 254/255))
                        .fontWeight(.bold)
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct SplashScreen_View_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
