//
//  TimerView.swift
//  Tesis_App_3 WatchKit Extension
//
//  Created by Celina on 02.08.19.
//  Copyright © 2019 CelinaLandgraf. All rights reserved.
//

import SwiftUI


struct TimerView : View {
    @ObservedObject var data = ExtensionDelegate.model
    
    let anotherTimer = Timer.publish(every: 1, on: .current, in: .common).autoconnect()
    
    
    var body: some View {
        VStack {
            Text("\(data.exercises[Int(data.exercise)])")
                .font(.headline)
            Spacer()
            if data.scenario == 0 || data.scenario == 2 {
                Text("\(data.countDownInt / 60):\(data.countDownInt % 60)")
                    .font(.title)
                    .onReceive(anotherTimer) { _ in
                        if self.data.countDownInt > 0 {
                            self.data.countDownInt -= 1
                        }
                }
            } else if data.scenario == 1 {
                Text("\(Int(data.countDownDouble) / 60):\(Int(data.countDownDouble) % 60)")
                    .font(.title)
                    .onReceive(anotherTimer) { _ in
                        if self.data.countDownDouble > 0 {
                            self.data.countDownDouble -= 1
                        }
                }
            }
        }
    }
}

#if DEBUG
struct Timer_Previews : PreviewProvider {
    static var previews: some View {
        //        TimerView(timer: CustomTimer(timeInterval: 80))
        TimerView(data: Model())
    }
}
#endif

