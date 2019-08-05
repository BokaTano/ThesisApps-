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
    
    var countDown: Int = 30 {
        willSet {
            willChange.send()
        }
    }
}
