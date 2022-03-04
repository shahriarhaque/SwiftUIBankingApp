//
//  AccountHeaderTabContentView.swift
//  SwiftUIBankingApp
//
//  Created by Shahriar Haque on 5/3/22.
//

import SwiftUI

struct AccountHeaderTabContentView: View {
    var primaryText: String
    var secondaryText: String
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 8.0) {
                Text(primaryText)
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(Color("onPrimary"))
                
                Text(secondaryText)
                    .foregroundColor(Color("onPrimary"))
                Spacer()
            }
            .padding(16)
            Spacer()
        }
    }
}

struct AccountHeaderTabContentView_Previews: PreviewProvider {
    static var previews: some View {
        AccountHeaderTabContentView(primaryText: "$4,560.32", secondaryText: "Total savings")
            .background(Color("primary"))
    }
}
