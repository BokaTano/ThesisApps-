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
        TimerView(timer: CustomTimer(timeInterval: 20))
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

struct MainView : View {
    
    @State private var exercises = ["Unterarmstütz", "Dehnen", "Kopfstand", "Handstand"]
    @State private var selectedExercise = "Plank"
    @State private var selectedTimeIndex = 60
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                ScrollView {
                    ForEach(self.exercises.identified(by: \.self)) { exercise in
                        Button(action: {
                            self.selectedExercise = String(exercise)
                        }) {
                            Text(exercise)
                        }
                    }
                    Picker(selection: self.$selectedTimeIndex, label: Text("select Time")) {
                        Text("Option 1")
                        Text("Option 2")
                        Text("Option 3")
                    }
                    .frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)
                }
                .contextMenu {
                    Button(action: { print("Start") } ) {
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

