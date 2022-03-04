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
    var institution: String
    var availableToSpend: Double
    var amountDue: Double? = nil
    var accountProfile: AccountProfile
}

extension AccountSummary {
    static let samples = [
        // everyday
        AccountSummary(
            accountType: .everyday,
            accountName: "Salary Account",
            institution: "Greater Bank",
            availableToSpend: 1412.73,
            accountProfile: AccountProfile.everyday
        ),
        AccountSummary(
            accountType: .everyday,
            accountName: "Spending Account",
            institution: "Up Bank",
            availableToSpend: 1412.73,
            accountProfile: AccountProfile.everyday
        ),
        // savings
        AccountSummary(
            accountType: .savings,
            accountName: "Emergency",
            institution: "Up Bank",
            availableToSpend: 1412.73,
            accountProfile: AccountProfile.savings
        ),
        AccountSummary(
            accountType: .savings,
            accountName: "Car",
            institution: "Up Bank",
            availableToSpend: 1412.73,
            accountProfile: AccountProfile.savings
        ),
        AccountSummary(
            accountType: .savings,
            accountName: "Holiday",
            institution: "Up Bank",
            availableToSpend: 1412.73,
            accountProfile: AccountProfile.savings
        ),
        AccountSummary(
            accountType: .savings,
            accountName: "Emergency 2",
            institution: "86400",
            availableToSpend: 1412.73,
            accountProfile: AccountProfile.savings
        ),
        // credit card
        AccountSummary(
            accountType: .creditCard,
            accountName: "Zip Pay",
            institution: "Zip",
            availableToSpend: 1412.73,
            accountProfile: AccountProfile.creditCard
        ),
        AccountSummary(
            accountType: .creditCard,
            accountName: "Afterpay",
            institution: "Afterpay",
            availableToSpend: 1412.73,
            accountProfile: AccountProfile.creditCard
        ),
        // investments
        AccountSummary(
            accountType: .investment,
            accountName: "Commsec Pocket",
            institution: "Commonwealth Bank",
            availableToSpend: 1412.73,
            accountProfile: AccountProfile.investment
        ),
        AccountSummary(
            accountType: .investment,
            accountName: "Spaceship",
            institution: "Spaceship",
            availableToSpend: 1412.73,
            accountProfile: AccountProfile.investment
        ),
    ]
}
