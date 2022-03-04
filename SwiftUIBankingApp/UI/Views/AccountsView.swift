//
//  AccountsView.swift
//  SwiftUIBankingApp
//
//  Created by Shahriar Haque on 25/2/22.
//

import SwiftUI

struct AccountsView: View {
    @EnvironmentObject var userData: UserData
    @State private var isEditable = false
    
    var filteredAccounts: [AccountSummary] {
        return userData.accountSummaries.filter { $0.accountProfile == userData.selectedProfile
        }
    }
    
    var accountList: some View {
        List {
            ForEach(filteredAccounts, id: \.self) { account in
                AccountSummaryListItem(account: account)
                    .swipeActions(allowsFullSwipe: false) {
                        swipeButtons()
                    }
            }
            .onMove(perform: move)
            .onLongPressGesture {
                 withAnimation {
                     self.isEditable = true
                 }
            }
        }
        .environment(\.editMode, isEditable ? .constant(.active) : .constant(.inactive))
        .listStyle(.plain)
        .scaledToFill()
    }

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(
                    columns: [GridItem(.flexible())],
                    pinnedViews: [.sectionHeaders]
                ){
                    Section(header: AccountsHeaderView()){
                        accountList
                    }
                }
            }
            .addNavigationBar("Accounts")
            .toolbar {
                ToolbarItemGroup(
                    placement: .navigationBarTrailing
                ) {
                    picker()
                }
            }
  
        }

    }
    
    func move(from source: IndexSet, to destination: Int) {
        userData.accountSummaries.move(fromOffsets: source, toOffset: destination)
        isEditable = false
    }
    
    @ViewBuilder
    func swipeButtons() -> some View {
        Button {
            print("Muting conversation")
        } label: {
            Label("Mute", systemImage: IconConstants.settingsOutline)
        }
        .tint(Color("secondary"))
        
        Button {
            print("Muting conversation")
        } label: {
            Label("Mute", systemImage: IconConstants.transferMenuIcon)
        }
        .tint(Color("primary"))
    }
    
    @ViewBuilder
    func picker() -> some View {
        Picker("Profile", selection: $userData.selectedProfile) {
            
            ForEach(userData.accountProfiles, id: \.self) { profile in
                Label(String(format: " %@", profile.name), systemImage: profile.image)
                .tag(profile)
                
            }
        }
        .pickerStyle(.menu)
    }
    
}



struct AccountsView_Previews: PreviewProvider {
    static var previews: some View {
        AccountsView().environmentObject(UserData())
    }
}
