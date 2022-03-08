//
//  TransferView.swift
//  SwiftUIBankingApp
//
//  Created by Shahriar Haque on 8/3/22.
//

import SwiftUI

struct TransferView: View {
    @State private var textTransferAmount = ""
    @State var selectedDate = Date()
    @State var endDate = Date()
    @State private var oftenSelection = "Once"
    @State private var endingSelection = "Never"
    @State private var numOccurences = 1
    
    var scheduleSection: some View {
        Section(header: Text("Schedule")) {
            DatePicker("When", selection: $selectedDate, displayedComponents: .date)
            
            HStack {
                Text("How often")
                Spacer()
                Picker("How often", selection: $oftenSelection.animation()) {
                  ForEach(["Once", "Daily", "Weekly", "Fornightly", "Monthly", "Quarterly", "Yearly"], id: \.self) {
                      Text($0).tag($0)
                  }
                }.pickerStyle(.menu)
            }
            
            if(oftenSelection != "Once"){
                HStack {
                    Text("Ending")
                    Spacer()
                    Picker("Ending", selection: $endingSelection.animation()) {
                      ForEach(["Never", "On date", "Occurences"], id: \.self) {
                        Text($0).tag($0)
                      }
                    }.pickerStyle(.menu)
                }
                
                if(endingSelection == "On date"){
                    DatePicker("End date", selection: $endDate, displayedComponents: .date)
                }
                
                if(endingSelection == "Occurences"){
                    Stepper(numberOccurencesDisplay, value: $numOccurences, in: 1...52)
                }
            }
            
        }
    }
    
    var numberOccurencesDisplay: String {
        if numOccurences == 1{
            return "Once"
        }
        return "\(numOccurences) times"
    }
    
    var form: some View {
        Form {
            Section(header: Text("Recipient")) {
                Text("Recipient")
                Text("Recipient")
            }
            
            Section(header: Text("Amount")) {
                TextField("Amount", text: $textTransferAmount)
            }
            
            scheduleSection
            
            Section(header: Text("Description")) {
                TextField("Description", text: $textTransferAmount)
                TextField("Reference", text: $textTransferAmount)
            }
            
        }
    }
    
    var body: some View {
        NavigationView {
            form
            .addNavigationBar("Transfer")
            .toolbar {
                ToolbarItemGroup(
                    placement: .navigationBarTrailing
                ) {
                    Button {} label: {
                        Image(systemName: "ellipsis.circle")
                    }
                }
            }
        }
    }
}

struct TransferView_Previews: PreviewProvider {
    static var previews: some View {
        TransferView().environmentObject(UserData())
    }
}
