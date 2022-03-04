//
//  AccountProfile.swift
//  SwiftUIBankingApp
//
//  Created by Shahriar Haque on 4/3/22.
//

import Foundation
import SwiftUI

struct AccountProfile: Identifiable, Hashable {
    var id = UUID()
    var name: String
    var image: String
    var type: AccountProfileType
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
        hasher.combine(type)
    }
}

enum AccountProfileType {
    case everyday, savings, creditcard, loans, investments, business, custom
}

extension AccountProfile {
    static let everyday = AccountProfile(name: "Everyday", image: IconConstants.everydayAccount, type: .everyday)
    static let savings = AccountProfile(name: "Savings", image: IconConstants.savingsAccount, type: .savings)
    static let creditCard = AccountProfile(name: "Credit Cards", image: IconConstants.creditCardAccount, type: .creditcard)
    static let investment = AccountProfile(name: "Investments", image: IconConstants.investmentAccount, type: .investments)
    
    static let samples = [
        everyday,
        savings,
        creditCard,
        investment,
    ]
}
