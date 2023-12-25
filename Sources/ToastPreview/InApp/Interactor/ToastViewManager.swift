//
//  ToastViewManager.swift
//  ToastPreview
//
//  Created by Skander BAHRI on 21/12/2023.
//

import SwiftUI

@Observable
public class ToastViewManager {
	public static let shared = ToastViewManager()
	var toasts: [ToastItem] = []
	
	public init() {}
	
	public func present(background: Color = .primary,
						isUserINteractionEnabled: Bool = false,
						symbol: String?,
						symbolTint: Color = .blue,
						timing: ToastTime = .medium,
						title: String,
						titleTint: Color = .black) {
		
		withAnimation(.snappy) {
			toasts.append(ToastItem(background: background,
									isUserINteractionEnabled: isUserINteractionEnabled,
									symbol: symbol,
									symbolTint: symbolTint,
									timing: timing,
									title: title,
									titleTint: titleTint))
		}
	}
}
