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
        VStack(alignment: .leading) {
            if selector == "countdown" {
                Picker(selection: $data.countDownInt, label: Text("select Time")) {
                    ForEach(1...240, id: \.self) { diget in
                        Text("\(diget)").tag(diget)
                    }
                }
                .frame(width: width, height: (height/2), alignment: .center)
            } else if selector == "exercise" {
                Picker(selection: $data.exercise, label: Text("select exercise")) {
                    ForEach(data.exercises, id: \.self) { exercise in
                        Text("\(exercise)").tag(self.data.exercises.firstIndex(of: exercise)!)
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
