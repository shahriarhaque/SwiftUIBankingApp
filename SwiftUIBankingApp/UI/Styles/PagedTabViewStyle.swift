//
//  PagedTabViewStyle.swift
//  SwiftUIBankingApp
//
//  Created by Shahriar Haque on 2/3/22.
//

import Foundation
import UIKit

public class PagedTabViewStyle {
    
    public static func apply(){
        UIPageControl.appearance().currentPageIndicatorTintColor = .white
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.init(named: "onPrimaryVariant")
        
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.black.withAlphaComponent(1.0)
        UIPageControl.appearance().backgroundStyle = .minimal
        
    }
    
}
