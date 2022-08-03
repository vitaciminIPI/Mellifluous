//
//  TestView.swift
//  Melliflluous
//
//  Created by daniel stefanus christiawan on 28/07/22.
//

import SwiftUI

struct TestView: View {
//    @ObservedObject var data: MusicManager
    @State private var showModal = false
//    @State var music = Music(title: "asdfa", author: "asdfasd", url: "asdfsadf")
    
    //Timer
    @State var timeRemaining = 10
    var timeVM = timerViewModel()
    let timer = Timer.publish(every: 1, on: .main, in: .common)
        .autoconnect()
    
    var body: some View {
        ZStack {
            VStack {
                Text(timeVM.convertSecToTime(timeInSec: timeRemaining))
                    .padding()
                    .font(.system(size: 100))
                    .onReceive(timer) { _ in
                        if timeRemaining > 0 {
                            timeRemaining -= 1
                        } else {
                            timeRemaining = 0
                        }
                        
                    }
                
                Button("Cancel") {
                    self.timer.upstream.connect().cancel()
                    timeRemaining = 0
                }
                .padding()
                
//                Button("Click here") {
//                    showModal.toggle()
//                    test.fetchData()
//                }
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
//            ModalView(isShowing: $showModal, music: music)
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
