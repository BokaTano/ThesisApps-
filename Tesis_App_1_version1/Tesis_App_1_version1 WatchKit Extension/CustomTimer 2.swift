//
//  Timer.swift
//  Tesis_App_1_version1 WatchKit Extension
//
//  Created by Celina on 19.07.19.
//  Copyright © 2019 CelinaLandgraf. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

final class CustomTimer:  BindableObject{
    let didChange = PassthroughSubject<Void, Never>()
    
    @EnvironmentObject private var data: Data
    
//    public var currentTime: Int
    public var timer: Timer {
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(onSecondPassed), userInfo: nil, repeats: true)
    }
    
    @objc func onSecondPassed() {
        if data.countDownTime > 0 {
            data.countDownTime = data.countDownTime - 1
            didChange.send()
        } else {
            timer.invalidate()
        }
    }
    
    init() {
        //TODO: data initialise
        //currentTime = data.countDownTime
//        currentTime = 20
        timer.fire()
    }

}



