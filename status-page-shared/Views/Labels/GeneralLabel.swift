//
//  GeneralLabel.swift
//  status-page
//
//  Created by Hannes Van den Berghe on 27/06/2019.
//  Copyright © 2019 icapps. All rights reserved.
//

import SwiftUI

public struct GeneralLabel: View {
    
    public var text: String
    public var size: Length? = 16
    public var color: Color? = Color.gray
    
    public var body: some View {
        Text(text)
            .color(color)
            .lineLimit(nil)
            .font(Font.HKNovaR(size: size!))
            .multilineTextAlignment(.leading)
    }
}

#if DEBUG
struct GeneralLabel_Previews : PreviewProvider {
    static var previews: some View {
        GeneralLabel(text: "Test")
    }
}
#endif
