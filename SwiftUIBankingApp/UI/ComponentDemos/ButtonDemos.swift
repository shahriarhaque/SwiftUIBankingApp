//
//  ButtonDemos.swift
//  SwiftUIBankingApp
//
//  Created by Shahriar Haque on 16/2/22.
//

import SwiftUI

struct ButtonDemos: View {
    var body: some View {
        VStack(spacing: 10) {
            Button("Primary"){}.buttonStyle(LilacPrimaryButtonStyle())
            
            Button("Secondary"){}.buttonStyle(LilacSecondaryButtonStyle())
        }
    }
}

struct ButtonDemos_Previews: PreviewProvider {
    static var previews: some View {
        ButtonDemos()
    }
}
