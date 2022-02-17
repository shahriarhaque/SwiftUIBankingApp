//
//  AccountSummary.swift
//  SwiftUIBankingApp
//
//  Created by Shahriar Haque on 17/2/22.
//

import Foundation

struct AccountSummary: Identifiable, Hashable {
    var id = UUID()
    var accountType: AccountType
    var accountName: String
    var availableToSpend: Double
    var amountDue: Double? = nil
}

extension AccountSummary {
    static let samples = [
        AccountSummary(accountType: .everyday, accountName: "Everyday account", availableToSpend: 1412.73),
        AccountSummary(accountType: .savings, accountName: "Emergency", availableToSpend: 5871.81),
        AccountSummary(accountType: .savings, accountName: "Car", availableToSpend: 691.14),
        AccountSummary(accountType: .savings, accountName: "Holiday", availableToSpend: 1840.23),
    ]
}
