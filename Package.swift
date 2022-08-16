// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VSM",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "VSM",
            targets: ["VSM"]),
    ],
    dependencies: [
        .package(url: "https://github.com/albertbori/TestableCombinePublishers.git", branch: "swift-tools-v5.5")
    ],
    targets: [
        .target(
            name: "VSM",
            dependencies: []),
        .testTarget(
            name: "VSMTests",
            dependencies: [
                "VSM",
                "TestableCombinePublishers"
            ]),
    ]
)
