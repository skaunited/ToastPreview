// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ToastPreview",
	platforms: [.iOS(.v17)],
    products: [
        .library(
            name: "ToastPreview",
            targets: ["ToastPreview"]),
    ],
    targets: [
        .target(
            name: "ToastPreview"),
        .testTarget(
            name: "ToastPreviewTests",
            dependencies: ["ToastPreview"]),
    ]
)
