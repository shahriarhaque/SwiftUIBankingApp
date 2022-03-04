//
//  AccountListItemDemo.swift
//  SwiftUIBankingApp
//
//  Created by Shahriar Haque on 17/2/22.
//

import SwiftUI

struct AccountListItemSwipeDemo: View {
    @State private var accounts = AccountSummary.samples
    
    
    var body: some View {
        List {
            ForEach(accounts, id: \.self) { account in
                AccountSummaryListItem(account: account)
                    .swipeActions(allowsFullSwipe: false) {
                        Button {
                            print("Muting conversation")
                        } label: {
                            Label("Mute", systemImage: IconConstants.settingsOutline)
                        }
                        .tint(Color("secondary"))
                        
                        Button {
                            print("Muting conversation")
                        } label: {
                            Label("Mute", systemImage: IconConstants.transferMenuIcon)
                        }
                        .tint(Color("primary")) 
                    }
            }
        }.listStyle(PlainListStyle())

    }
    
}

struct AccountListItemSwipeDemo_Previews: PreviewProvider {
    static var previews: some View {
        AccountListItemSwipeDemo()
.previewInterfaceOrientation(.portrait)
    }
}
