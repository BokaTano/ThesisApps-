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
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                ScrollView {
                    ButtonView(data: self.data)
                    
                    Spacer()
                        .padding(.top)
                    
                    Picker(selection: self.$data.countDownTime, label: Text("select Time")) {
                        ForEach(1...240) { diget in
                            Text("\(diget)")
                        }
                        
                    }
                    .frame(width: geometry.size.width, height: (geometry.size.height/3*2), alignment: .center)
                    
                    Spacer()
                        .padding(.top)
                    
                    NavigationLink(destination: TimerView(data: self.data)) {
                        VStack {
                            Image(systemName: "play.fill").imageScale(.medium)
                            Text("Start")
                        }
                    }
                }
                .contextMenu {
                    NavigationLink(destination: TimerView(data: self.data)) {
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
        MainView().environmentObject(Model())
    }
}
#endif

