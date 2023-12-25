//
//  ToastViewPresenterProtocol.swift
//	Toastpreview
//
//  Created by Skander BAHRI on 23/12/2023.
//

import Foundation

protocol ToastViewPresenterProtocol: ObservableObject {
	var size: CGSize { get }
	var item: ToastItem { get }
	
	func removeToast(with id: UUID)
}
