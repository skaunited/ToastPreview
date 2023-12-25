//
//  PassThrow.swift
//  ToastPreview
//
//  Created by Skander BAHRI on 21/12/2023.
//

import UIKit

class PassthrougWindow: UIWindow {
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        guard let view = super.hitTest(point, with: event) else { return nil }
        return rootViewController?.view == view ? nil : view
    }
}
