// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "BadgeIcon",
    platforms: [
        .iOS(.v16),
        .tvOS(.v16),
        .watchOS(.v8),
        .macOS(.v13)
    ],
    products: [
        .library(
            name: "BadgeIcon",
            targets: ["BadgeIcon"]
        )
    ],
    targets: [
        .target(
            name: "BadgeIcon"
        ),
        .testTarget(
            name: "BadgeIconTests",
            dependencies: ["BadgeIcon"]
        )
    ]
)
