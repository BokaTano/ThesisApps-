//
//  Timer.swift
//  Tesis_App_1_version1 WatchKit Extension
//
//  Created by Celina on 19.07.19.
//  Copyright © 2019 CelinaLandgraf. All rights reserved.
//

import SwiftUI

struct TimerView : View {
    @ObjectBinding var timer: CustomTimer
//    @State var currentTime: Int
//    var timer: Timer {
//        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(onSecondPassed), userInfo: nil, repeats: true)
//    }
    
    var body: some View {
        Text("\(timer.currentTime / 60):\(timer.currentTime % 60)")
            }
    
//    @objc func onSecondPassed() {
//        currentTime = currentTime - 1
//    }
//    @State var nowDate: Date = Date()
//    let cuCalendar = Calendar(identifier: .gregorian)
//    var referenceDate: Date = Date()
//    var seconds: Int
//
//    var timer: Timer {
//        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {_ in
//            self.nowDate = Date()
//        }
//    }
//
//    var body: some View {
//        Text(countDownString())
//            .onAppear(perform: {
//                _ = self.timer
//            })
//    }
//
//    func countDownString() -> String {
//        referenceDate = Calendar.current.date(bySetting: .second, value: seconds, of: referenceDate)
//        let calendar = Calendar(identifier: .gregorian)
//        let components = calendar
//            .dateComponents([.day, .hour, .minute, .second],
//                            from: nowDate,
//                            to: referenceDate)
//        return String(format: "%02dd:%02dh:%02dm:%02ds",
//                      components.day ?? 00,
//                      components.hour ?? 00,
//                      components.minute ?? 00,
//                      components.second ?? 00)
//    }
}

#if DEBUG
struct Timer_Previews : PreviewProvider {
    static var previews: some View {
        TimerView(timer: CustomTimer(timeInterval: 80))
    }
}
#endif
