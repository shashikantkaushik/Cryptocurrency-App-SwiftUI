//
//  Double.swift
//  Cryptocurrency SwiftUI
//
//  Created by Shashi Kant on 03/10/24.
//

import SwiftUI
import Foundation

extension Double{
    
    private var currencyFormatter6: NumberFormatter{
        let formatter=NumberFormatter()
        formatter.usesGroupingSeparator
        formatter.maximumFractionDigits=2
        formatter.minimumFractionDigits=6
        formatter.numberStyle=.currency
        formatter.locale=.current
        formatter.numberStyle=
    }
    
    func set Curr()->String{
        let number=NSNumber(value:self)
        
    }
}
