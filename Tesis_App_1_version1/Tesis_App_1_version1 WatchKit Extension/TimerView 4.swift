//
//  Timer.swift
//  Tesis_App_1_version1 WatchKit Extension
//
//  Created by Celina on 19.07.19.
//  Copyright © 2019 CelinaLandgraf. All rights reserved.
//

import SwiftUI

struct TimerView : View {
//    @ObjectBinding var timer = CustomTimer(timeInterval: 20)
    @EnvironmentObject var data : Model
//    @State var seconds: Int = 20
    
    
    let anotherTimer = Timer.publish(every: 1, on: .current, in: .common).autoconnect()


    var body: some View {
        Text("\(data.countDown / 60):\(data.countDown % 60)")
            .font(.title)
            .onReceive(anotherTimer) { _ in
                if self.data.countDown > 0 {
                    self.data.countDown -= 1
                } else {
//                    anotherTimer.stop()
                }
            }
    }
}

#if DEBUG
struct Timer_Previews : PreviewProvider {
    static var previews: some View {
//        TimerView(timer: CustomTimer(timeInterval: 80))
        
        TimerView().environmentObject(Model())
    }
}
#endif
