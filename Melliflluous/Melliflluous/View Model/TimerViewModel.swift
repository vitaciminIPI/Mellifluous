//
//  TimerViewModel.swift
//  Melliflluous
//
//  Created by daniel stefanus christiawan on 04/08/22.
//

import Foundation

class timerViewModel {
    
    func convertSecToTime(timeInSec: Int) -> String {
        let min = timeInSec / 60
        let sec = timeInSec % 60
        
//        %i -> auto detect base
//        ex: input in octal 012, print with %i -> 10
        return String(format: "%02i:%02i", min, sec)
    }
    
}
