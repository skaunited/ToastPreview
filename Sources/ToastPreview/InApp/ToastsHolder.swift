//
//  ToastGroup.swift
//  ToastPreview
//
//  Created by Skander BAHRI on 21/12/2023.
//

import SwiftUI

struct ToastsHolder: View {
    var model = Interactor.shared
    
    var body: some View {
        GeometryReader {
            let size = $0.size
            let safeArea = $0.safeAreaInsets
            
            ZStack {
                ForEach(model.toasts) { toast in
                    ToastView(size: size, item: toast)
                        .scaleEffect(scale(toast))
                        .offset(y: offsetY(toast))
                        .zIndex(Double(model.toasts.firstIndex(where: { $0.id == toast.id }) ?? .zero))
                }
            }
            .padding(.bottom, safeArea.top == .zero ? GraphicStaticValues.sixteen :GraphicStaticValues.eight )
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        }
    }
    
    func offsetY(_ item: ToastItem) -> CGFloat {
        let index = CGFloat(model.toasts.firstIndex(where: { $0.id == item.id }) ?? .zero)
        let totalCount = CGFloat(model.toasts.count) - 1
        
        return (totalCount - index) > 1 ? 20 : ((totalCount - index) * -10)
    }
    
    func scale(_ item: ToastItem) -> CGFloat {
        let index = CGFloat(model.toasts.firstIndex(where: { $0.id == item.id }) ?? .zero)
        let totalCount = CGFloat(model.toasts.count) - 1
        
        return 1.0 - ((totalCount - index) > 1 ? 0.2 : ((totalCount - index) * 0.1))
    }
}
