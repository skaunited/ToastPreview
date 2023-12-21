//
//  ContentView.swift
//  ToastPreview
//
//  Created by Skander BAHRI on 20/12/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack() {
            Button(action: {
				Interactor.shared.present(background: .red,
										  symbol: "globe",
										  symbolTint: .green,
										  timing: .medium,
										  title: "Hello World",
										  titleTint: .yellow)
            }, label: {
                Text("Present Toast")
            })
        }
    }
}

#Preview {
    RootView {
        ContentView()
    }
}
