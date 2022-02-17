//
//  LilacButtonStyle.swift
//  SwiftUIBankingApp
//
//  Created by Shahriar Haque on 16/2/22.
//

import SwiftUI

struct LilacPrimaryButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .foregroundColor(Color.primaryButtonForeground)
            .font(Font.primaryButtonFont)
            .padding()
            .background(Color.primaryButtonBackground)
            .cornerRadius(SizeConstants.primaryButtonCornerRadius)
    }
}

struct LilacSecondaryButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .foregroundColor(Color.secondaryButtonForeground)
            .font(Font.secondaryButtonFont)
            .padding()
            .background(Color.secondaryButtonBackground)
            .cornerRadius(SizeConstants.secondaryButtonCornerRadius)
    }
}
