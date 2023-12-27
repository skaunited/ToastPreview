//
//  ToastTime.swift
//  ToastPreview
//
//  Created by Skander BAHRI on 21/12/2023.
//

import SwiftUI

public enum ToastTime: CGFloat {
    case short = 1.0
    case medium = 2.0
    case long = 3.5
}

public enum ShapeType {
	case capsule
	case rectangle

	var content: any Shape {
		switch self {
		case .capsule:
			Capsule()
		case .rectangle:
			Rectangle()
		}
	}
}
