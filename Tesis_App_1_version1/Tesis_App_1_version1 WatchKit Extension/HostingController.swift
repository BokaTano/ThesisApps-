//
//  HostingController.swift
//  Tesis_App_1_version1 WatchKit Extension
//
//  Created by Celina on 16.07.19.
//  Copyright © 2019 CelinaLandgraf. All rights reserved.
//

import WatchKit
import Foundation
import SwiftUI

class HostingController : WKHostingController<AnyView> {
    override var body: AnyView {
        return AnyView(ContentView().environmentObject(Model()))
    }
}
