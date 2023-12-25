//
//  ContentViewPresenter.swift
//  ToastPreview
//
//  Created by Skander BAHRI on 23/12/2023.
//

import Foundation

class ContentViewPresenter {
	lazy var interactor = ToastViewManager.shared
}

extension ContentViewPresenter: ContentViewPresenterProtocol {
	func didTapAction() {
		interactor.present(background: .red,
								symbol: "globe",
								symbolTint: .green,
								timing: .medium,
								title: "Hello World",
								titleTint: .yellow)
	}
}
