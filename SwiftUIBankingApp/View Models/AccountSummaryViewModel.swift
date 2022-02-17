//
//  AccountSummaryViewModel.swift
//  SwiftUIBankingApp
//
//  Created by Shahriar Haque on 17/2/22.
//

import Foundation

class AccountSummaryViewModel: ObservableObject {
    @Published var accounts: [AccountSummary] = AccountSummary.samples
}
