//
//  OpenSansLabel.swift
//  status-page-shared
//
//  Created by Hannes Van den Berghe on 08/07/2019.
//  Copyright © 2019 icapps. All rights reserved.
//

import SwiftUI

public struct OpenSansLabel : View {
    public var text: String
    public var color: Color? = Color.gray
    public var size: Length = 16
    
    public var body: some View {
        Text(text)
            .color(color)
            .font(Font.OpenSansR(size: size))
            .lineLimit(nil)
    }
}

#if DEBUG
struct OpenSansLabel_Previews : PreviewProvider {
    static var previews: some View {
        OpenSansLabel(text: "Test")
    }
}
#endif
