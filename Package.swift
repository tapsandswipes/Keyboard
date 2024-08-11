// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "Keyboard",
    platforms: [.macOS(.v14), .iOS(.v17), .visionOS(.v1)],
    products: [.library(name: "Keyboard", targets: ["Keyboard"])],
    dependencies: [.package(url: "https://github.com/AudioKit/Tonic.git", from: "1.0.6")],
    targets: [
        .target(name: "Keyboard", dependencies: ["Tonic"]),
        .testTarget(name: "KeyboardTests", dependencies: ["Keyboard"]),
    ]
)
