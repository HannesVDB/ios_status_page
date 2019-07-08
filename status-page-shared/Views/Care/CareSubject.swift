//
//  CareSubject.swift
//  status-page-shared
//
//  Created by Hannes Van den Berghe on 08/07/2019.
//  Copyright © 2019 icapps. All rights reserved.
//

import SwiftUI

struct CareSubject : View {
    
    var title: some View {
        OpenSansLabel(text: "New ticket for BARD by Illaria Rainalid", color: Color.white, size: 20)
            .padding([.leading, .trailing], 24)
            .padding([.top, .bottom], 6)
            .background(Color.icRed)
            .cornerRadius(8)
    }
    
    var subject: some View {
        OpenSansLabel(text: "Re: [External] RE: BD2GO - continuing problems #2090", color: Color.white, size: 16)
    }
    
    var body: some View {
        VStack(spacing: 16) {
            title
            subject
        }
        .padding([.leading, .trailing], 24)

    }
}

#if DEBUG
struct CareSubject_Previews : PreviewProvider {
    static var previews: some View {
        CareSubject()
    }
}
#endif
