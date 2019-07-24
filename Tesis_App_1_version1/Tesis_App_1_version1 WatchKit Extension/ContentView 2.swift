//
//  ContentView.swift
//  Tesis_App_1_version1 WatchKit Extension
//
//  Created by Celina on 16.07.19.
//  Copyright © 2019 CelinaLandgraf. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @State private var exercises = ["Unterarmstütz", "Dehnen", "Kopfstand", "Handstand"]
    @State private var selectedExercise = "Plank"
    @State private var selectedTimeIndex = 60
    
    var body: some View {
        ScrollView(isScrollEnabled: true, alwaysBounceHorizontal: false, alwaysBounceVertical: true, showsHorizontalIndicator: false, showsVerticalIndicator: true) {
            VStack {
                ForEach(exercises.identified(by: \.self)) { exercise in
                    Button(action: {
                        self.selectedExercise = exercise
                    }) {
                        Text(exercise)
                    }
                }
                Picker(selection: $selectedTimeIndex) {
                    ForEach(0..<240) { item in
                        Text("Option 1").foregroundColor(.white)
                    }
                    Text("Option 2")
                    Text("Option 3")
                }
                
            }
            
            }
            .frame(width: 140*3 + 4.0*3, height: 140)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
