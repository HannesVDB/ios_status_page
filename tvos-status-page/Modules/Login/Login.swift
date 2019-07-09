//
//  Login.swift
//  tvos-status-page
//
//  Created by Hannes Van den Berghe on 08/07/2019.
//  Copyright © 2019 icapps. All rights reserved.
//

import SwiftUI
import status_page_shared

struct Login : View {
    @EnvironmentObject var serviceStore: ServiceStore
    
    var body: some View {
        VStack {
            Text("This is a Label")
            ActionButton(action: {
                print("Somethign here")
            }, title: "Login")
            ServeOverview()
            Divider()
            HStack {
                Velos()
                CareItem().frame(maxWidth: 800, maxHeight: 900)
            }
            
        }
    }
}

#if DEBUG
struct Login_Previews : PreviewProvider {
    static var previews: some View {
        Login()
    }
}
#endif
