//
//  GeneralLabel.swift
//  status-page
//
//  Created by Hannes Van den Berghe on 27/06/2019.
//  Copyright © 2019 icapps. All rights reserved.
//

import SwiftUI

struct GeneralLabel: View {
    
    var text: String
    var color: Color? = Color.gray
    
    var body: some View {
        Text(text)
            .color(color)
            .font(Font.HKNovaR(size: 16))
            .lineLimit(nil)
    }
}

#if DEBUG
struct GeneralLabel_Previews : PreviewProvider {
    static var previews: some View {
        GeneralLabel(text: "Test")
    }
}
#endif
