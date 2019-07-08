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
    var body: some View {
        HStack {
            Text("This is a Label")
            ActionButton(action: {
                print("Somethign here")
            }, title: "Login")
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
