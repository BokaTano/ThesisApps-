//
//  MainView.swift
//  Tesis_App_1_version1 WatchKit Extension
//
//  Created by Celina on 19.07.19.
//  Copyright © 2019 CelinaLandgraf. All rights reserved.
//

import SwiftUI

struct MainView : View {
    @ObservedObject var data = Model()
    @State private var pickerIndex = 1
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                if self.data.scenario == 0 {
                    ScrollView {
                        ButtonView(data: self.data)
                            .frame(width: geometry.size.width)
                        Spacer()
                            .padding(.top)

                        PickerView(data: self.data, selector: "countdown", width: geometry.size.width, height: geometry.size.height)

                        Spacer()
                            .padding(.top)

                        NavigationButtonView(data: self.data)
                    }
                    .contextMenu {
                        NavigationButtonView(data: self.data)
                    }
                } else if self.data.scenario == 1 {
                    ScrollView {
                        PickerView(data: self.data, selector: "exercise", width: geometry.size.width, height: geometry.size.height)

                        Spacer()
                            .padding(.top)

                        SliderView(data: self.data)

                        Spacer()
                            .padding(.top)

                        NavigationButtonView(data: self.data)
                    }
                } else if self.data.scenario == 2 {
                    ScrollView {
                        ListView(data: self.data, width: geometry.size.width, height: geometry.size.height * 1.5)
                        
                        Spacer()
                            .padding(.top)

                        Text("Gebe hier die Zeit an:")

                        TextField("Woop", value: self.$data.countDownInt, formatter: NumberFormatter())
                    }
                }
                
            }
        }
    }
}


#if DEBUG
struct MainView_Previews : PreviewProvider {
    static var previews: some View {
        Group {
            MainView(data: Model(scenario: 0))
            MainView(data: Model(scenario: 1))
            MainView(data: Model(scenario: 2))
        }
    }
}
#endif



