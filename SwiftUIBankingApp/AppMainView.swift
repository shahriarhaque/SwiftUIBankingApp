//
//  ContentView.swift
//  SwiftUIBankingApp
//
//  Created by Shahriar Haque on 24/1/22.
//

import SwiftUI
import TabBar

struct AppMainView : View {
    
    @State private var selection: TabItem = .accounts
    @StateObject var userData = UserData()
    
    var body: some View {
        TabBar(selection: $selection) {
            AccountsView()
                .tabItem(for: TabItem.accounts)
            
            Text("Transfer screen")
                .tabItem(for: TabItem.transfers)
            
            Text("Setting screen")
                .tabItem(for: TabItem.settings)
        }
        .tabBar(style: CustomTabBarStyle())
        .tabItem(style: CustomTabItemStyle())
        .environmentObject(userData)
    }
}

struct AppMainView_Previews: PreviewProvider {
    static var previews: some View {
        AppMainView()
    }
}
