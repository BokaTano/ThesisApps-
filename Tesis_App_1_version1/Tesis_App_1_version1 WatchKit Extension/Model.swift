//
//  Data.swift
//  Tesis_App_1_version1 WatchKit Extension
//
//  Created by Celina on 19.07.19.
//  Copyright © 2019 CelinaLandgraf. All rights reserved.
//

import Combine

final class Model: ObservableObject {
     var exercises = ["Unterarmstütz", "Dehnen", "Kopfstand", "Handstand", "Aufwärmen", "Freuen"]
        
    @Published var countDownInt: Int = 30
    @Published var countDownDouble: Double = 30
    @Published var exercise: Int = 2
    
    @Published var scenario: Int = 0
    
    init() {}
    
    init(scenario: Int) {
        self.scenario = scenario
    }
    
}

enum PickerType : String {
    case exercise = "exercise"
    case countdown = "countdown"
}

