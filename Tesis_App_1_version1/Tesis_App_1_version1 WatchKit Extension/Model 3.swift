//
//  Data.swift
//  Tesis_App_1_version1 WatchKit Extension
//
//  Created by Celina on 19.07.19.
//  Copyright © 2019 CelinaLandgraf. All rights reserved.
//

import Combine
import SwiftUI

final class Model: BindableObject {
    
    let willChange = PassthroughSubject<Void, Never>()
    
    var exercises = ["Unterarmstütz", "Dehnen", "Kopfstand", "Handstand", "Aufwärmen", "Freuen"]
    
//    var times = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"]
    
    var countDownTime: Double = 30 {
        willSet {
            willChange.send()
        }
    }
    
    var exercise: Int = 2 {
        willSet {
            willChange.send()
        }
    }
}

//class BindableStringArray: BindableObject {
//    let willChange = PassthroughSubject<Void, Never>()
//    
//    var stringArray: [String] = [] {
//        willSet {
//            willChange.send()
//        }
//    }
//}

enum PickerType : String {
    case exercise = "exercise"
    case countdown = "countdown"
}
