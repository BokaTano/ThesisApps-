//
//  Model.swift
//  Tesis_App_3 WatchKit Extension
//
//  Created by Celina on 02.08.19.
//  Copyright © 2019 CelinaLandgraf. All rights reserved.
//

import Combine

final class Model: ObservableObject {
     var exercises = ["Unterarmstütz", "Dehnen", "Kopfstand", "Handstand", "Aufwärmen", "Freuen"]
        
    @Published var countDownInt: Int = 33
    @Published var countDownDouble: Double = 33
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
