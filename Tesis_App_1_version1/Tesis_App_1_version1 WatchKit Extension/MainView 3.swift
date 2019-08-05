//
//  MainView.swift
//  Tesis_App_1_version1 WatchKit Extension
//
//  Created by Celina on 19.07.19.
//  Copyright © 2019 CelinaLandgraf. All rights reserved.
//

import SwiftUI

struct MainView : View {
    @ObjectBinding private var data = Model()
    var scenario: Int
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                if self.scenario == 0 {
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
                } else if self.scenario == 1 {
                    ScrollView {
                        PickerView(data: self.data, selector: "exercise", width: geometry.size.width, height: geometry.size.height)
                        
                        Spacer()
                            .padding(.top)
                        
                        ButtonView(data: self.data)
                            .frame(width: geometry.size.width)
                        Spacer()
                            .padding(.top)
                        
                        NavigationButtonView(data: self.data)
                    }
                }
                
            }
        }
    }
}


#if DEBUG
struct MainView_Previews : PreviewProvider {
    static var previews: some View {
        MainView(scenario: 1).environmentObject(Model())
    }
}
#endif

