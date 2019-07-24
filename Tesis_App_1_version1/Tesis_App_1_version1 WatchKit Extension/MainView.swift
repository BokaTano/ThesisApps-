//
//  MainView.swift
//  Tesis_App_1_version1 WatchKit Extension
//
//  Created by Celina on 19.07.19.
//  Copyright © 2019 CelinaLandgraf. All rights reserved.
//

import SwiftUI

struct MainView : View {
    @EnvironmentObject private var data: Model
    
    @State private var exercises = ["Unterarmstütz", "Dehnen", "Kopfstand", "Handstand"]
    @State private var selectedExercise = "Plank"
    @State private var selectedTimeIndex = 60 {
        didSet {
            data.countDownTime = selectedTimeIndex
        }
    }
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                ScrollView {
                    Text("Time \(self.data.countDownTime)")
                    ForEach(self.exercises.identified(by: \.self)) { exercise in
                        Button(action: {
                            self.selectedExercise = String(exercise)
                        }) {
                            Text(exercise)
                        }
                    }
                    Picker(selection: self.$selectedTimeIndex, label: Text("select Time")) {
                        ForEach(1...240) { diget in
                            Text("\(diget)")
                        }
                       
                    }
                    .frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)
                    NavigationLink(destination: TimerView()) {
                        VStack {
                            Image(systemName: "play.fill").imageScale(.medium)
                            Text("Start")
                        }
                    }
                }
                .contextMenu {
                    NavigationLink(destination: TimerView()) {
                        VStack {
                            Image(systemName: "play.fill").imageScale(.medium)
                            Text("Start")
                        }
                    }
                }
            }
        }
    }
}


#if DEBUG
struct MainView_Previews : PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
#endif
