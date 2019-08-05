//
//  PickerView.swift
//  Tesis_App_1_version1 WatchKit Extension
//
//  Created by Celina on 26.07.19.
//  Copyright © 2019 CelinaLandgraf. All rights reserved.
//

import SwiftUI

struct PickerView: View {
    @ObservedObject var data: Model
    //    let selector: PickerType
    let selector: String
    
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        VStack {
            if selector == "countdown" {
                Picker(selection: $data.countDownTime, label: Text("select Time")) {
                    ForEach(1...240) { diget in
                        Text("\(diget)")
                    }
                }
                .frame(width: width, height: (height/2), alignment: .center)
                
            } else if selector == "exercise" {
                Picker(selection: $data.exercise, label: Text("select exercise")) {
                    ForEach(data.exercises.identified(by: \.self)) { exercise in
                        Text("\(exercise)")
                    }
                }
                .frame(width: width, height: (height/2), alignment: .center)
            }
        }
    }
}

#if DEBUG
struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
        GeometryReader { geometry in
            Group {
                PickerView(data: Model(), selector: "exercise", width: geometry.size.width, height: geometry.size.height)
            }
        }
        GeometryReader { geometry in
                    Group {
                        PickerView(data: Model(), selector: "countdown", width: geometry.size.width, height: geometry.size.height)
                    }
                }
        }
            
    }
}
#endif
