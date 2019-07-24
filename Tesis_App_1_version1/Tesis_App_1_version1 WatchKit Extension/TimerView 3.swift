//
//  Timer.swift
//  Tesis_App_1_version1 WatchKit Extension
//
//  Created by Celina on 19.07.19.
//  Copyright © 2019 CelinaLandgraf. All rights reserved.
//

import SwiftUI

struct TimerView : View {
    @EnvironmentObject private var data: Data
    @ObjectBinding var timer = CustomTimer()

    var body: some View {
        Text("\(data.countDownTime / 60):\(data.countDownTime % 60)")
            }
}

#if DEBUG
struct Timer_Previews : PreviewProvider {
    static var previews: some View {
        TimerView(timer: CustomTimer())
    }
}
#endif
