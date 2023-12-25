//
//  ToastViewPresenter.swift
//  ToastPreview
//
//  Created by Skander BAHRI on 23/12/2023.
//

import Foundation

class ToastViewPresenter {
	lazy var manager = ToastViewManager.shared
	
	@Published var size: CGSize
	@Published var item: ToastItem
	
	init(size: CGSize, item: ToastItem) {
		self.size = size
		self.item = item
	}
	
	
}

extension ToastViewPresenter: ToastViewPresenterProtocol {
	func removeToast(with id: UUID) {
		manager.toasts.removeAll(where: {$0.id == id})
	}
}
