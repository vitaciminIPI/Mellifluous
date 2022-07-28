//
//  TimerView.swift
//  Melliflluous
//
//  Created by daniel stefanus christiawan on 28/07/22.
//

import SwiftUI

struct TimerView: View {
    @State var timeRemaining = 10
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack (spacing: 30) {
            Text("\(timeRemaining)")
                .onReceive(timer) { _ in
                    if timeRemaining > 0 {
                        timeRemaining -= 1
                    }
                }
            Button("Cancel") {
                self.timer.upstream.connect().cancel()
                timeRemaining = 10
            }
        }
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
