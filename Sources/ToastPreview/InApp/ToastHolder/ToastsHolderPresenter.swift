//
//  ToastsHolderPresenter.swift
//	ToastPreview
//
//  Created by Skander BAHRI on 23/12/2023.
//

import Foundation

class ToastsHolderPresenter {
	lazy var manager = ToastViewManager.shared
}

extension ToastsHolderPresenter: ToastsHolderPresenterProtocol {
	var updatedToasts: [ToastItem] {
		manager.toasts
	}
	
	func getFirstIndex(with id: UUID) -> Double {
		Double(manager.toasts.firstIndex { $0.id == id } ?? .zero)
	}
	
	func offsetY(with id: UUID) -> CGFloat {
		let index = CGFloat(manager.toasts.firstIndex(where: { $0.id == id }) ?? .zero)
		let totalCount = CGFloat(manager.toasts.count) - 1
		
		return (totalCount - index) > 1 ? 20 : ((totalCount - index) * -10)
	}
	
	func scale(with id: UUID) -> CGFloat {
		let index = CGFloat(manager.toasts.firstIndex(where: { $0.id == id }) ?? .zero)
		let totalCount = CGFloat(manager.toasts.count) - 1
		
		return 1.0 - ((totalCount - index) > 1 ? 0.2 : ((totalCount - index) * 0.1))
	}
}
