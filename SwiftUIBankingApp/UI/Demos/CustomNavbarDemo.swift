//
//  CustomNavbarDemo.swift
//  SwiftUIBankingApp
//
//  Created by Shahriar Haque on 19/2/22.
//

import SwiftUI

struct CustomNavbarDemo: View {
    @State private var accounts = AccountSummary.samples
    @State private var selectedProfile = 1
    
    var body: some View {
        NavigationView {
            List {
                ForEach(accounts, id: \.self) { account in
                    AccountSummaryListItem(account: account)
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Accounts")
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Picker("Profile", selection: $selectedProfile) {
                        
                        Label(" Shahriar", systemImage: "person.crop.circle").tag(1)
                        
                        Label(" Acme Corp", systemImage: "briefcase.circle").tag(2)
                    }
                    .pickerStyle(.menu)
                    
                }
            }
        }
        .onAppear {
            NavigationBarStyle.apply()
        }
    }
}

struct CustomNavbarDemo_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavbarDemo()
    }
}
