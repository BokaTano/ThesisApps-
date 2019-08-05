//
//  ButtonView.swift
//  Tesis_App_1_version1 WatchKit Extension
//
//  Created by Celina on 25.07.19.
//  Copyright © 2019 CelinaLandgraf. All rights reserved.
//

import SwiftUI

struct ButtonView: View {
    @ObservedObject var data: Model
    
    var body: some View {
        VStack {

            ForEach(self.data.exercises.identified(by: \.self)) { exercise in
                Button(action: {
                    self.data.exercise = self.data.exercises.firstIndex(of: exercise) ?? 0
                }) {
                    Text(exercise)
                }
            }
            
//            HStack {
//                Button(action: {
//                    self.data.exercise = self.data.exercises[0]
//                }) {
//                    Text(self.data.exercises[0])
//                }
//                Button(action: {
//                    self.data.exercise = self.data.exercises[1]
//                }) {
//                    Text(self.data.exercises[1])
//                }
//            }
//            HStack {
//                Button(action: {
//                    self.data.exercise = self.data.exercises[2]
//                }) {
//                    Text(self.data.exercises[2])
//                }
//                Button(action: {
//                    self.data.exercise = self.data.exercises[3]
//                }) {
//                    Text(self.data.exercises[3])
//                }
//            }
//            HStack {
//                Button(action: {
//                    self.data.exercise = self.data.exercises[4]
//                }) {
//                    Text(self.data.exercises[4])
//                }
//                Button(action: {
//                    self.data.exercise = self.data.exercises[5]
//                }) {
//                    Text(self.data.exercises[5])
//                }
//            }
        }
    }
}


#if DEBUG
struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(data: Model())
    }
}
#endif
