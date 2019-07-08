//
//  LoginView.swift
//  status-page
//
//  Created by icapps on 26/06/2019.
//  Copyright © 2019 icapps. All rights reserved.
//

import SwiftUI
import status_page_shared

struct LoginView : View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: nil) {
                Image("icapps_banner")
                    .resizable()
                    .frame(width: 250, height: 50, alignment: .center)
                    .padding(.bottom, 100)
                
                VStack(alignment: .leading, spacing: nil) {
                    TextField($username, placeholder: Text("Username")).textFieldStyle(.roundedBorder)
                    }
                    .padding([.leading, .trailing], 30)
                
                VStack(alignment: .leading, spacing: nil) {
                    SecureField($password, placeholder: Text("Password")).textFieldStyle(.roundedBorder)
                    }
                    .padding([.leading, .trailing], 30)
                    .padding(.bottom, 30)
                ActionButton(action: {
                    print("ACtion")
                }, title: "Login")
            }
            .navigationBarTitle(Text("Login"))
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
