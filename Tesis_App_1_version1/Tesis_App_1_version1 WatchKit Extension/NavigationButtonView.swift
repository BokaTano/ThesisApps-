//
//  NavigationButtonView.swift
//  Tesis_App_1_version1 WatchKit Extension
//
//  Created by Celina on 26.07.19.
//  Copyright © 2019 CelinaLandgraf. All rights reserved.
//

import SwiftUI
import Combine

struct NavigationButtonView: View {
    @ObservedObject var data: Model
    
    var body: some View {
        NavigationLink(destination: TimerView(data: self.data)) {
            VStack {
                Image(systemName: "play.fill").imageScale(.medium)
                Text("Start")
            }
        }
    }
}

#if DEBUG
struct NavigationButtonView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationButtonView(data: Model())
    }
}
#endif
