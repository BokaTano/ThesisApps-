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
    let willChange = PassthroughSubject<Void, Never>()
    
    public var currentTime: Int
    public var timer: Timer {
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(onSecondPassed), userInfo: nil, repeats: true)
    }
    
    @objc func onSecondPassed() {
        if currentTime > 0 {
            currentTime = currentTime - 1
            willChange.send()
        } else {
            timer.invalidate()
        }
    }
    
    init(timeInterval: Int) {
        currentTime = timeInterval + 1
        timer.fire()
    }

}



