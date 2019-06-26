//
//  StartView.swift
//  status-page
//
//  Created by icapps on 26/06/2019.
//  Copyright © 2019 icapps. All rights reserved.
//

import SwiftUI

struct StartView : View {

    @State var selectedIndex: Int = 0

    var body: some View {
        NavigationView {
            SegmentedControl(selection: $selectedIndex) {
                Text("Test")
                Text("Test2")
                }
                .navigationBarHidden(false).padding(.leading).padding(.trailing)
            
        }
    }
}

#if DEBUG
struct StartView_Previews : PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
#endif
