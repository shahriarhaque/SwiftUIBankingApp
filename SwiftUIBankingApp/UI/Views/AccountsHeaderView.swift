//
//  AccountsHeaderView.swift
//  SwiftUIBankingApp
//
//  Created by Shahriar Haque on 1/3/22.
//

import SwiftUI

struct AccountsHeaderView: View {
    @State private var index = 0
    
    var savingsView: some View {
        
        HStack {
            VStack(alignment: .leading, spacing: 8.0) {
                Text("$4,560.32")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(Color("onPrimary"))
                
                Text("Total savings")
                    .foregroundColor(Color("onPrimary"))
                Spacer()
            }
            .padding(16)
        Spacer()
        }
    }
    
    var interestView: some View {
        HStack {
            VStack(alignment: .leading, spacing: 8.0) {
                Text("$64.12")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(Color("onPrimary"))
                
                Text("Interest earned this year")
                    .foregroundColor(Color("onPrimary"))
                Spacer()
            }
            .padding(16)
            Spacer()
        }
    }
    
    var body: some View {
        Rectangle()
            .fill(Color("primary"))
            .frame(height: 125)
            .overlay(
                TabView {
                    savingsView
                    interestView
                }
                .tabViewStyle(.page)
                    .indexViewStyle(.page(backgroundDisplayMode: .never))
            )
    }
}

struct AccountsHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        AccountsHeaderView()
    }
}
