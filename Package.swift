// swift-tools-version:5.1
import PackageDescription

let frameworkName = "WhatToWearCommonTesting"

let package = Package(
    name: frameworkName,
    platforms: [
        .iOS(.v10),
        .macOS(.v10_14)
    ],
    products: [
        .library(name: frameworkName, targets: [frameworkName]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: frameworkName,
            dependencies: [],
            path: frameworkName
        ),
    ]
)
