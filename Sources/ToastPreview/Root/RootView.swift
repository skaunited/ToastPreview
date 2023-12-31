//
//  RootView.swift
//  ToastPreview
//
//  Created by Skander BAHRI on 21/12/2023.
//

import SwiftUI
import UIKit

///RootView for creating overlay windows.
public struct RootView<Content: View>: View {
    @ViewBuilder public var content: Content
    /// View Properties
    @State private var overlayWindow: UIWindow?
	
	public init(@ViewBuilder content: () -> Content) {
		self.content = content()
	}
	
	public var body: some View {
        content
            .onAppear {
                if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene, overlayWindow == nil {
                    let window = PassthrougWindow(windowScene: windowScene)
                    /// View Controller
					let rootController = UIHostingController(rootView: ToastsHolder(presenter: ToastsHolderPresenter()))
                    rootController.view.frame = windowScene.keyWindow?.frame ?? .zero
                    rootController.view.backgroundColor = .clear
                    
                    /// Window
                    window.backgroundColor = .clear
                    window.rootViewController = rootController
                    window.isHidden = false
                    window.isUserInteractionEnabled = true
                    window.tag = TechnicalStaticValues.windowTag
                    
                    overlayWindow = window
                }
            }
    }
}
