//
//  NavigationBarStyle.swift
//  SwiftUIBankingApp
//
//  Created by Shahriar Haque on 19/2/22.
//

import Foundation
import UIKit
import SwiftUI

public class NavigationBarStyle {
    
    static func apply(){
        let navBarBackgroundColor = UIColor(Color.primary)
        let navBarTextColor = UIColor(Color.onPrimary)
        let navBarTintColor = UIColor(Color.onPrimary)
        
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.configureWithTransparentBackground()
        coloredAppearance.backgroundColor = navBarBackgroundColor
        coloredAppearance.titleTextAttributes = [.foregroundColor: navBarTextColor]
        coloredAppearance.largeTitleTextAttributes = [.foregroundColor: navBarTextColor]

        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().compactAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
        UINavigationBar.appearance().tintColor = navBarTintColor
    }
    
}

extension View {
    func addNavigationBar(_ title: String) -> some View {
        self
        .navigationTitle(title)
        .onAppear {
            NavigationBarStyle.apply()
        }
        .statusBarStyle(.lightContent)
    }
}
