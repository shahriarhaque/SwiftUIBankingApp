//
//  AccountIcon.swift
//  SwiftUIBankingApp
//
//  Created by Shahriar Haque on 17/2/22.
//

import SwiftUI

struct AccountIcon: View {
    var accountType: AccountType
    
    var icon: some View {
        switch(accountType){
        case .everyday:
            return Image(systemName: IconConstants.everydayAccount)
        case .savings:
            return Image(systemName:IconConstants.savingsAccount)
        case .creditCard:
            return Image(systemName:IconConstants.creditCardAccount)
        case .personalLoan:
            return Image(systemName:IconConstants.personalLoanAccount)
        case .homeLoan:
            return Image(systemName:IconConstants.homeLoanAccount)
        
        }
    }
    
    var body: some View {
        icon.accessibilityHidden(true)
    }
}

struct AccountIcon_Previews: PreviewProvider {
    static var previews: some View {
        AccountIcon(accountType: .creditCard)
            .frame(width: 32, height: 32)
    }
}
