//
//  TimeCounter.swift
//  fromLesson3
//
//  Created by Dmitry Tokarev on 16.12.2020.
//

import Foundation
import Combine

class TimeCounter: ObservableObject {

    let objectWillChange = PassthroughSubject<TimeCounter, Never>()
    var counter = 5
    var timer: Timer?
    var buttonTitle = "Start"
    
    func startTimer() {
        if counter > 0 {
            timer = Timer.scheduledTimer(timeInterval: 1,
                                         target: self,
                                         selector: #selector(updateCounter),
                                         userInfo: nil,
                                         repeats: true)
        }
        buttonDDidTapped()
    }
    
    @objc private func updateCounter() {
        if counter > 0 {
            counter -= 1
        } else {
            killTimer()
            buttonTitle = "Reset"
        }
        
        objectWillChange.send(self)
    }
    
    private func killTimer() {
        timer?.invalidate()
        timer = nil
    }
    
    private func buttonDDidTapped() {
        if buttonTitle == "Reset" {
            counter = 5
            buttonTitle = "Start"
        } else {
            buttonTitle = "Wait..."
        }
        
        objectWillChange.send(self)
    }
    
}
