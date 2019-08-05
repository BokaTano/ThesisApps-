//
//  NextPageView.swift
//  Tesis_App_1_version1 WatchKit Extension
//
//  Created by Celina on 02.08.19.
//  Copyright © 2019 CelinaLandgraf. All rights reserved.
//

import WatchKit
import Foundation
import SwiftUI

class NextPageView: WKHostingController<AnyView> {
     override var body: AnyView {
        return AnyView(TimerView(data: Model()))
       }
}

