//
//  ToastsHolder.swift
//  ToastPreview
//
//  Created by Skander BAHRI on 21/12/2023.
//

import SwiftUI

struct ToastsHolder<T>: View where T: ToastsHolderPresenterProtocol  {
	var presenter: T
	
	var body: some View {
		GeometryReader {
			let size = $0.size
			let safeArea = $0.safeAreaInsets 
			ZStack {
				ForEach(presenter.updatedToasts) { toast in
					ToastView(presenter: ToastViewPresenter(size: size, item: toast))
						.scaleEffect(presenter.scale(with: toast.id))
						.offset(y: presenter.offsetY(with: toast.id))
						.zIndex(presenter.getFirstIndex(with: toast.id))
				}
			}
			.padding(.bottom, safeArea.top == .zero ? GraphicStaticValues.sixteen :GraphicStaticValues.eight )
			.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
		}
	}

}
