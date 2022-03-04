//
//  AccountsHeaderDemo.swift
//  SwiftUIBankingApp
//
//  Created by Shahriar Haque on 1/3/22.
//

import SwiftUI

struct AccountsHeaderDemo: View {
    var body: some View {
        NavigationView{
            ScrollView {
                VStack {
                    AccountsHeaderView()
                    Spacer()
                }
            }
            .navigationTitle("Accounts")
            .onAppear {
                NavigationBarStyle.apply()
            }
            .statusBarStyle(.lightContent)
        }
    }
}

struct AccountsHeaderDemo_Previews: PreviewProvider {
    static var previews: some View {
        AccountsHeaderDemo()
    }
}
