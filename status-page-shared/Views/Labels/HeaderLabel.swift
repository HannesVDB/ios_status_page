//
//  HeaderLabel.swift
//  status-page-shared
//
//  Created by Hannes Van den Berghe on 08/07/2019.
//  Copyright © 2019 icapps. All rights reserved.
//

import SwiftUI

public struct HeaderLabel : View {
    public var text: String
    public var color: Color? = Color.white
    public var size: Length = 24
    
    public var body: some View {
        Text(text)
            .color(color)
            .lineLimit(nil)
            .font(Font.HKNovaBoldR(size: size))
    }
}

#if DEBUG
struct HeaderLabel_Previews : PreviewProvider {
    static var previews: some View {
        HeaderLabel(text: "Header")
    }
}
#endif
