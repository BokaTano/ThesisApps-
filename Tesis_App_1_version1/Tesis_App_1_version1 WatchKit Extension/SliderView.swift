//
//  SliderView.swift
//  Tesis_App_1_version1 WatchKit Extension
//
//  Created by Celina on 29.07.19.
//  Copyright © 2019 CelinaLandgraf. All rights reserved.
//

import SwiftUI
import Combine

struct SliderView: View {
    @ObservedObject var data: Model
    
    var body: some View {
        VStack {
            Text("\(Int(self.data.countDownDouble)/60) Minuten \(Int(self.data.countDownDouble)%60) Sekunden")
//            Slider(value: self.$data.countDownTime,
//                   from: 0,
//                   through: 240,
//                   by: 2)
            Slider(value: self.$data.countDownDouble,
                   in: 0...240,
                   step: 2)
        }
    }
}

#if DEBUG
struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(data: Model())
    }
}
#endif
