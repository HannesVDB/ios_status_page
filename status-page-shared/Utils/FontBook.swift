//
//  FontBook.swift
//  status-page
//
//  Created by Hannes Van den Berghe on 27/06/2019.
//  Copyright © 2019 icapps. All rights reserved.
//

import SwiftUI

public extension Font {
    static func HKNovaR(size: Length) -> Font {
        return Font.custom("HKNova-RegularR", size: size)
    }
    
    static func HKNovaBoldR(size: Length) -> Font {
        return Font.custom("HKNova-BoldR", size: size)
    }
    
    static func OpenSansR(size: Length) -> Font {
        return Font.custom("OpenSans-Regular", size: size)
    }
}
