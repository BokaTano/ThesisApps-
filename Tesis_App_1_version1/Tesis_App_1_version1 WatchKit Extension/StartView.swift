//
//  StartView.swift
//  Tesis_App_1_version1 WatchKit Extension
//
//  Created by Celina on 29.07.19.
//  Copyright © 2019 CelinaLandgraf. All rights reserved.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        VStack {
            Spacer()
            ForEach(0...2, id: \.self) { index in
                NavigationLink(destination: MainView(data: Model(scenario: index))) {
                    Text("Szenario \(index+1)")
                }
            }
        }
    }
}

#if DEBUG
struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
#endif
