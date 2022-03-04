//
//  AccountsView.swift
//  SwiftUIBankingApp
//
//  Created by Shahriar Haque on 25/2/22.
//

import SwiftUI

struct AccountsView: View {
    @State private var accounts = AccountSummary.samples
    @State private var selectedProfile = 1
    @State private var isEditable = false
    
    var accountList: some View {
        List {
            Section(header: Text("Savers")){
                ForEach(accounts, id: \.self) { account in
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
        accounts.move(fromOffsets: source, toOffset: destination)
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
        Picker("Profile", selection: $selectedProfile) {
            
            Label(" Shahriar", systemImage: "person.crop.circle").tag(1)
            
            Label(" Acme Corp", systemImage: "briefcase.circle").tag(2)
        }
        .pickerStyle(.menu)
    }
    
}



struct AccountsView_Previews: PreviewProvider {
    static var previews: some View {
        AccountsView()
    }
}
