//
//  ContentView.swift
//  Tesis_App_1_version1 WatchKit Extension
//
//  Created by Celina on 16.07.19.
//  Copyright © 2019 CelinaLandgraf. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        TimerView()
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif


