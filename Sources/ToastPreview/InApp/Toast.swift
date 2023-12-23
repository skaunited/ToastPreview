//
//  Toast.swift
//  ToastPreview
//
//  Created by Skander BAHRI on 20/12/2023.
//

import SwiftUI
import UIKit

struct ToastView: View {
    var size: CGSize
    var item: ToastItem

    @State private var delayTask: DispatchWorkItem?

    var body: some View {
        HStack(spacing: GraphicStaticValues.zero) {
            if let symbol = item.symbol {
                Image(systemName: symbol)
                    .font(.title3)
                    .padding(.trailing, GraphicStaticValues.eight)
                    .foregroundColor(item.symbolTint)
            }
            
            Text(item.title)
                .lineLimit(2)
                .foregroundColor(item.titleTint)
        }
        .foregroundColor(item.background)
        .padding(.horizontal, GraphicStaticValues.sixteen)
        .padding(.vertical, GraphicStaticValues.eight)
		.background(
			Capsule()
				.fill(item.background)
		)
        .background(
			.background
                .shadow(.drop(color: .primary.opacity(GraphicStaticValues.sixHundredths),
                              radius: GraphicStaticValues.five,
                              x: GraphicStaticValues.five,
                              y: GraphicStaticValues.five))
            
                .shadow(.drop(color: .primary.opacity(GraphicStaticValues.sixHundredths),
                              radius: GraphicStaticValues.eight,
                              x: GraphicStaticValues.negativeFive,
                              y: GraphicStaticValues.negativeFive)),
            in: .capsule
        )
        .contentShape(.capsule)
        .gesture(
            DragGesture(minimumDistance: GraphicStaticValues.zero)
                .onEnded {  value in
                    guard item.isUserINteractionEnabled else { return }
                    let endY = value.translation.height
                    let velocityY = value.velocity.height
                    
                    if (endY + velocityY > 100) {
                        /// Remove Toast
                        removeToast()
                    }
                }
        )
        .onAppear {
            guard delayTask == nil else { return }
            delayTask = .init(block: {
                removeToast()
            })
            
            if let delayTask {
                DispatchQueue.main.asyncAfter(deadline: .now() + item.timing.rawValue, execute: delayTask)
            }
        }
        .frame(maxWidth: size.width * GraphicStaticValues.eightTenths)
        .transition(.offset(y: 150))
    }
    
    func removeToast() {
        if let delayTask {
            delayTask.cancel()
        }
                
        withAnimation(.snappy) {
            Interactor.shared.toasts.removeAll(where: {$0.id == item.id})
        }
    }
}


#Preview {
    RootView {
        ContentView()
    }
}