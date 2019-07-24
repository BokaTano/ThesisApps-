//
//  Timer.swift
//  Tesis_App_1_version1 WatchKit Extension
//
//  Created by Celina on 19.07.19.
//  Copyright © 2019 CelinaLandgraf. All rights reserved.
//

import SwiftUI

struct TimerView : View {
    @ObjectBinding var timer = CustomTimer(timeInterval: 20)
    @EnvironmentObject var data : Model
    
    
    let anotherTimer = Timer.publish(every: 1, on: .current, in: .common).autoconnect()


    var body: some View {
        Text("\(data.countDownTime / 60):\(data.countDownTime % 60)")
            .onReceive(anotherTimer) {
                self.data.countDownTime -= 1
        }
    }
}

#if DEBUG
struct Timer_Previews : PreviewProvider {
    static var previews: some View {
        TimerView(timer: CustomTimer(timeInterval: 80))
    }
}
#endif
