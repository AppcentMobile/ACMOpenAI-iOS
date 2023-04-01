// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ACMOpenAI",
    products: [
        .library(
            name: "ACMOpenAI",
            targets: ["ACMOpenAI"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/AppcentMobile/ACMNetworking.git", from: "1.1.3"),
    ],
    targets: [
        .target(
            name: "ACMOpenAI",
            dependencies: [
                "ACMNetworking",
            ]
        ),
        .testTarget(
            name: "ACMOpenAITests",
            dependencies: ["ACMOpenAI"]
        ),
    ]
)
