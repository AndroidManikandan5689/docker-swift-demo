// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyApp",
    platforms: [
        .macOS(.v12)
    ],
    products: [
        .executable(name: "MyApp", targets: ["MyApp"])
    ],
    dependencies: [
        // Add dependencies here
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "MyApp", 
            dependencies: []
),
    ]
)
