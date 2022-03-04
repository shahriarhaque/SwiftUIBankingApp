//
//  AccountListItemDemo.swift
//  SwiftUIBankingApp
//
//  Created by Shahriar Haque on 17/2/22.
//

import SwiftUI

struct AccountListItemDragDemo: View {
    @State private var accounts = AccountSummary.samples
    @State private var isEditable = false

    
    var body: some View {
        List {
            ForEach(accounts, id: \.self) { account in
                AccountSummaryListItem(account: account)
            }
            .onMove(perform: move)
            .onLongPressGesture {
                 withAnimation {
                     self.isEditable = true
                 }
             }
        }.listStyle(PlainListStyle())
        .environment(\.editMode, isEditable ? .constant(.active) : .constant(.inactive))
    }
    
    func move(from source: IndexSet, to destination: Int) {
        accounts.move(fromOffsets: source, toOffset: destination)
        isEditable = false
    }
}

struct AccountListItemDragDemo_Previews: PreviewProvider {
    static var previews: some View {
        AccountListItemDragDemo()
    }
}
