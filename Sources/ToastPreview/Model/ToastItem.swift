//
//  ToastItem.swift
//  ToastPreview
//
//  Created by Skander BAHRI on 21/12/2023.
//

import SwiftUI

public struct ToastItem: Identifiable {
	public let id: UUID = .init()
	
	public let background: Color
	public let isUserINteractionEnabled: Bool
	public let symbol: String?
	public let symbolTint: Color
	public let timing: ToastTime
	public let title: String
	public let titleTint: Color
	
	public init(background: Color,
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
