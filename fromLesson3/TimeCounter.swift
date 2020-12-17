//
//  TimeCounter.swift
//  fromLesson3
//
//  Created by Dmitry Tokarev on 16.12.2020.
//

import Foundation
import Combine //для ObservableObject импорт Combine для доступа к паттерну MVVM

class TimeCounter: ObservableObject {
    
    //стандартный паблишер для Combine
    //при обращении будет возвращать TimeCounter, Never - обработка ошибок
    let objectWillChange = PassthroughSubject<TimeCounter, Never>()
    var counter = 3
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
            counter = 3
            buttonTitle = "Start"
        } else {
            buttonTitle = "Wait..."
        }
        
        objectWillChange.send(self)
    }
    
}
