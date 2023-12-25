//
//  ToastsHolderPresenterProtocol.swift
//  ToastPreview
//
//  Created by Skander BAHRI on 23/12/2023.
//

import Foundation

protocol ToastsHolderPresenterProtocol: ObservableObject {
	var updatedToasts: [ToastItem] { get }
	func getFirstIndex(with id: UUID) -> Double
	func scale(with id: UUID) -> CGFloat
	func offsetY(with id: UUID) -> CGFloat
}
