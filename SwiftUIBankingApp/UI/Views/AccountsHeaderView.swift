//
//  AccountsHeaderView.swift
//  SwiftUIBankingApp
//
//  Created by Shahriar Haque on 1/3/22.
//

import SwiftUI

struct AccountsHeaderView: View {
    @EnvironmentObject var userData: UserData
    var headerViewModels: [AccountHeaderViewModel] {
            switch(userData.selectedProfile.type){
                
            case .everyday:
                return UserData.everydayHeader
            case .savings:
                return UserData.savingsHeader
            case .creditcard:
                return UserData.creditCardHeader
            case .investments:
                return UserData.investmentHeader
                
            default:
                return [AccountHeaderViewModel]()
                
        }
    }
    
    
    var body: some View {
        Rectangle()
            .fill(Color("primary"))
            .frame(height: 125)
            .overlay(
                TabView {
                    ForEach(headerViewModels){ model in
                        AccountHeaderTabContentView(primaryText: model.primaryText, secondaryText: model.secondaryText)
                    }
                }
                .tabViewStyle(.page)
                    .indexViewStyle(.page(backgroundDisplayMode: .never))
            )
    }
}

struct AccountsHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        AccountsHeaderView().environmentObject(UserData())
    }
}
