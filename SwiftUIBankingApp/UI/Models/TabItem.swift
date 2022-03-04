//
//  TabItem.swift
//  SwiftUIBankingApp
//
//  Created by Shahriar Haque on 25/2/22.
//

import Foundation
import TabBar

enum TabItem: Int, Tabbable {
    case accounts = 0
    case transfers
    case settings
    
    var icon: String {
        switch self {
        case .accounts: return IconConstants.accountMenuIcon
        case .transfers: return IconConstants.transferMenuIcon
        case .settings: return IconConstants.settingsOutline
        }
    }
    
    var title: String {
        switch self {
            case .accounts: return "Accounts:"
            case .transfers: return "Transfers"
            case .settings: return "Settings"
        }
    }
}
