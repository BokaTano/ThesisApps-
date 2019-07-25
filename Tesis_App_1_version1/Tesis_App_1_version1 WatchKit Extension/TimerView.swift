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
    //    @EnvironmentObject var data : Model
    @ObjectBinding var data : Model
    //    @State var seconds: Int = 20
    
    
    let anotherTimer = Timer.publish(every: 1, on: .current, in: .common).autoconnect()
    
    
    var body: some View {
        VStack {
            Text(data.exercise)
                .font(.headline)
            Spacer()
            Text("\(data.countDownTime / 60):\(data.countDownTime % 60)")
                .font(.title)
                .onReceive(anotherTimer) { _ in
                    if self.data.countDownTime > 0 {
                        self.data.countDownTime -= 1
                    }
            }
//            NavigationLink(destination: MainView()) {
//                Text("zurück")
//            }
            
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
