//
//  DecodeImage.swift
//  status-page-shared
//
//  Created by Hannes Van den Berghe on 08/07/2019.
//  Copyright © 2019 icapps. All rights reserved.
//

import SwiftUI

struct DecodeImage : View {
    
    let base64: String?
    
    private var image: Image {
        if let base64 = base64,
            let data = Data(base64Encoded: base64, options: .ignoreUnknownCharacters),
            let uiimage = UIImage(data: data) {
            return Image(uiImage: uiimage)
        }
        return Image("placeholder")
    }
    
    var body: some View {
        image.resizable().aspectRatio(contentMode: .fill)
    }
}

#if DEBUG
struct DecodeImage_Previews : PreviewProvider {
    static var previews: some View {
        DecodeImage(base64: "test")
    }
}
#endif
