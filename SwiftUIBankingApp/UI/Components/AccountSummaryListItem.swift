//
//  AccountIListItem.swift
//  SwiftUIBankingApp
//
//  Created by Shahriar Haque on 17/2/22.
//

import SwiftUI

struct AccountSummaryListItem: View {
    var account: AccountSummary
    
    var body: some View {
        HStack(spacing: 0) {
            HStack(spacing: SizeConstants.paddingExtraSmall) {
                AccountIcon(accountType: account.accountType)
                Text(account.accountName)
                    .font(Font.headline)
                    .fixedSize(horizontal: false, vertical: true)
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
            }
            
            Spacer()
            
            Text(account.availableToSpend.asCurrencyString()).layoutPriority(1)
        }
        .padding(.top, SizeConstants.paddingSmall)
        .padding(.bottom, SizeConstants.paddingSmall)
    }
}

struct AccountSummaryListItem_Previews: PreviewProvider {
    static var previews: some View {
        AccountSummaryListItem(account: AccountSummary.samples[0])
    }
}
