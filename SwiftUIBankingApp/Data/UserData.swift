//
//  UserData.swift
//  SwiftUIBankingApp
//
//  Created by Shahriar Haque on 4/3/22.
//

import Foundation

class UserData: ObservableObject {
    @Published var accountSummaries = AccountSummary.samples
    @Published var accountProfiles = AccountProfile.samples
    @Published var selectedProfile = AccountProfile.samples[0]
    
    static let everydayHeader: [AccountHeaderViewModel] = [
        AccountHeaderViewModel(primaryText: "$2,156.45", secondaryText: "Available to spend")
    ]
    
    static let savingsHeader: [AccountHeaderViewModel] = [
        AccountHeaderViewModel(primaryText: "$10,560.32", secondaryText: "Total savings"),
        AccountHeaderViewModel(primaryText: "$45.14", secondaryText: "Interest earned this year"),
    ]
    
    static let creditCardHeader: [AccountHeaderViewModel] = [
        AccountHeaderViewModel(primaryText: "$1,659.79", secondaryText: "Total amount due"),
        AccountHeaderViewModel(primaryText: "$340.86", secondaryText: "Available to spend"),
    ]
    
    static let investmentHeader: [AccountHeaderViewModel] = [
        AccountHeaderViewModel(primaryText: "$1,000.32", secondaryText: "Total investment"),
        AccountHeaderViewModel(primaryText: "$160.32", secondaryText: "Total earned this year"),
    ]
}
