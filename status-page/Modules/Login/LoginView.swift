//
//  LoginView.swift
//  status-page
//
//  Created by icapps on 26/06/2019.
//  Copyright © 2019 icapps. All rights reserved.
//

import SwiftUI

struct LoginView : View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack(alignment: .center, spacing: nil) {
            Image("icapps_banner")
                .padding(.horizontal, 100.0)
            VStack(alignment: .leading, spacing: nil) {
                TextField($username, placeholder: Text("Username"))
            }
            VStack(alignment: .leading, spacing: nil) {
                SecureField($password, placeholder: Text("Password"))
            }
            Button(action: {
                print("Tapped")
            }) {
                Text("Test")
            }
        }
    }
}

#if DEBUG
struct LoginView_Previews : PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
#endif
