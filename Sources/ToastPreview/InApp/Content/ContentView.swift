//
//  ContentView.swift
//  ToastPreview
//
//  Created by Skander BAHRI on 20/12/2023.
//

import SwiftUI

struct ContentView<Content: View>: View where Content: ContentViewPresenterProtocol {
	
	var presenter: Content
	
    var body: some View {
        VStack() {
            Button(action: {
				presenter.didTapAction()
            }, label: {
                Text("Present Toast")
            })
        }
    }
}
