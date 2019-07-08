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
    
    var serviceStatus: ServiceStatus {
        return ServiceStatus(heroku: Serve(status: .green, image: "placeholder", description: "5.16 MB/s"),
                             bitbucket: Serve(status: .green, image: "placeholder", description: "Howdy y'all"),
                             slack: Serve(status: .green, image: "placeholder", description: "Mayday!"),
                             jenkins: Serve(status: .green, image: "placeholder", description: "Running"),
                             network: Serve(status: .green, image: "placeholder", description: "5.16 MB/s"))
    }
    
    var body: some View {
        VStack {
            Text("This is a Label")
            ActionButton(action: {
                print("Somethign here")
            }, title: "Login")
            ServeOverview(status: serviceStatus)
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
