//
//  HostingController.swift
//  Tesis_App_3 WatchKit Extension
//
//  Created by Celina on 02.08.19.
//  Copyright © 2019 CelinaLandgraf. All rights reserved.
//

import WatchKit
import Foundation
import SwiftUI

class HostingController : WKHostingController<AnyView> {
    override var body: AnyView {
        return AnyView(MainView())
    }
}

