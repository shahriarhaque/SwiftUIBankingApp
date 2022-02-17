//
//  StringExtensions.swift
//  SwiftUIBankingApp
//
//  Created by Shahriar Haque on 17/2/22.
//

import Foundation

class Formatters {
    public static var currencyFormatter: NumberFormatter {
        get {
            let formatter = NumberFormatter()
            formatter.numberStyle = .currency
            
            return formatter
        }
    }
}

extension Double {
    
    func asCurrencyString() -> String {
        return Formatters.currencyFormatter.string(from: NSNumber(value: self)) ?? "\(self)"
    }
    
}
