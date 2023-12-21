//
//  ToastItem.swift
//  ToastPreview
//
//  Created by Skander BAHRI on 21/12/2023.
//

import SwiftUI

struct ToastItem: Identifiable {
    let id: UUID = .init()
    
    let background: Color
    let isUserINteractionEnabled: Bool
    let symbol: String?
    let symbolTint: Color
    let timing: ToastTime
    let title: String
    let titleTint: Color
    
    init(background: Color,
         isUserINteractionEnabled: Bool,
         symbol: String? = nil,
         symbolTint: Color,
         timing: ToastTime,
         title: String,
         titleTint: Color) {
        self.background = background
        self.isUserINteractionEnabled = isUserINteractionEnabled
        self.symbol = symbol
        self.symbolTint = symbolTint
        self.timing = timing
        self.title = title
        self.titleTint = titleTint
    }
}
