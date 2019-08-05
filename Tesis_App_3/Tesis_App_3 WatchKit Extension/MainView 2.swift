//
//  MainView.swift
//  Tesis_App_3 WatchKit Extension
//
//  Created by Celina on 02.08.19.
//  Copyright © 2019 CelinaLandgraf. All rights reserved.
//

import SwiftUI

struct MainView: View {
    @ObservedObject var data = Model()
    @State private var pickerIndex = 1
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
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
    
    #if DEBUG
    struct MainView_Previews: PreviewProvider {
        static var previews: some View {
            MainView()
        }
    }
#endif
}
