//
//  ActionButton.swift
//  status-page
//
//  Created by Hannes Van den Berghe on 27/06/2019.
//  Copyright © 2019 icapps. All rights reserved.
//

import SwiftUI

struct ActionButton : View {
    var action:(() -> Void)
    var title: String
    
    var body: some View {
        Button(action: action) {
            GeneralLabel(text: "Login", color: .white).padding([.leading, .trailing], 10).padding([.top, .bottom], 5)
        }
        .background(Color.icGold)
        .cornerRadius(8)
    }
}

#if DEBUG
struct ActionButton_Previews : PreviewProvider {
    static var previews: some View {
        ActionButton(action: {
            print("Action button tapped")
        }, title: "action_button")
    }
}
#endif
