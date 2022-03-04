//
//  FontExtensions.swift
//  SwiftUIBankingApp
//
//  Created by Shahriar Haque on 17/2/22.
//

import Foundation
import SwiftUI

extension Font {
    
    static func themeFont(size: CGFloat) -> Font {
        return .custom(AssetConstants.themeFontName, size: size)
    }
    
    static let primaryButtonFont = themeFont(size: 16)
    
    static let secondaryButtonFont = themeFont(size: 16)
    
}

