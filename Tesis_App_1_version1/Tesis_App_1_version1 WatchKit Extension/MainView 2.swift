//
//  MainView.swift
//  Tesis_App_1_version1 WatchKit Extension
//
//  Created by Celina on 19.07.19.
//  Copyright © 2019 CelinaLandgraf. All rights reserved.
//

import SwiftUI

struct MainView : View {
    @EnvironmentObject private var data: Data
    
    @State private var exercises = ["Unterarmstütz", "Dehnen", "Kopfstand", "Handstand"]
    @State private var selectedExercise = "Plank"
    @State private var selectedTimeIndex = 60
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                ScrollView {
                    Text(String(self.data.countDownTime))
                    ForEach(self.exercises.identified(by: \.self)) { exercise in
                        Button(action: {
                            self.selectedExercise = String(exercise)
                        }) {
                            Text(exercise)
                        }
                    }
                    Picker(selection: self.$data.countDownTime, label: Text("select Time")) {
                        ForEach(0...240) { number in
                            Text("\(number) seconds")
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
