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
	public let endPoint: UnitPoint?
	public let gradienColors: [Color]?
	public let isUserINteractionEnabled: Bool
	public let shapeType: ShapeType
	public let startPoint: UnitPoint?
	public let symbol: String?
	public let symbolTint: Color
	public let timing: ToastTime
	public let title: String
	public let titleTint: Color
	
	public init(background: Color = .primary,
				endPoint: UnitPoint? = nil,
				gradienColors: [Color]? = nil,
				isUserINteractionEnabled: Bool,
				shapeType: ShapeType = .capsule,
				startPoint: UnitPoint? = nil,
				symbol: String? = nil,
				symbolTint: Color,
				timing: ToastTime,
				title: String,
				titleTint: Color) {
		self.background = background
		self.endPoint = endPoint
		self.gradienColors = gradienColors
		self.isUserINteractionEnabled = isUserINteractionEnabled
		self.shapeType = shapeType
		self.startPoint = startPoint
		self.symbol = symbol
		self.symbolTint = symbolTint
		self.timing = timing
		self.title = title
		self.titleTint = titleTint
	}
	
	public var isGradienBackground: Bool {
		guard gradienColors?.count == 2,
			  let _ = startPoint,
			  let _ = endPoint
		else {
			return false
		}
		return true
	}
	
	public var gradienColorsWrapper: [Color] {
		gradienColors ?? [.white, .white]
	}
	
	public var endPointWrapper: UnitPoint {
		endPoint ?? .trailing
	}
	
	public var startPointWrapper: UnitPoint {
		startPoint ?? .leading
	}
}
