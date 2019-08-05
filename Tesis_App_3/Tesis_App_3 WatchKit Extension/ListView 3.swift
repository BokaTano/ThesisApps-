//
//  ListView.swift
//  Tesis_App_3 WatchKit Extension
//
//  Created by Celina on 02.08.19.
//  Copyright © 2019 CelinaLandgraf. All rights reserved.
//


import SwiftUI

struct ListView: View {
    @ObservedObject var data: Model
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        List {
            ForEach(self.data.exercises, id: \.self) { exercise in
                Text(exercise)
            }
        .onDelete(perform: delete)
        }
        .frame(width: self.width, height: self.height, alignment: .center)
    }
    
    func delete(at offsets: IndexSet) {
        print("some")
    }
}

#if DEBUG
struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { geometry in
            ListView(data: Model(), width: geometry.size.width, height: geometry.size.height)
        }
    }
}
#endif
