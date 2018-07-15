// swift-tools-version:4.1
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let frameworkName = "WhatToWearCommonTesting"

let package = Package(
    name: frameworkName,
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: frameworkName,
            targets: [frameworkName]),
        ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://BlairMcArthur@bitbucket.org/BlairMcArthur/whattowearcommoncore.git", from: "1.5.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: frameworkName,
            dependencies: ["WhatToWearCommonCore"],
            path: frameworkName),
    ]
)
