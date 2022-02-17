//
//  AccountListItemDemo.swift
//  SwiftUIBankingApp
//
//  Created by Shahriar Haque on 17/2/22.
//

import SwiftUI

struct AccountListItemDemo: View {
    @State private var accounts = AccountSummary.samples
    
    var body: some View {
        NavigationView {
            List {
                ForEach(accounts, id: \.self) { account in
                    AccountSummaryListItem(account: account)
                }.onMove(perform: move)
            }.toolbar {
                EditButton()
            }
        }
    }
    
    func move(from source: IndexSet, to destination: Int) {
        accounts.move(fromOffsets: source, toOffset: destination)
    }
}

struct AccountListItemDemo_Previews: PreviewProvider {
    static var previews: some View {
        AccountListItemDemo()
    }
}
