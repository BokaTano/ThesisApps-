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
    
    let didChange = PassthroughSubject<Void, Never>()
    
    var countDownTime: Int = 0 {
        didSet {
            didChange.send()
        }
    }
}
