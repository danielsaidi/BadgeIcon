// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "BadgeIcon",
    platforms: [
        .iOS(.v16),
        .tvOS(.v16),
        .watchOS(.v9),
        .macOS(.v13),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "BadgeIcon",
            targets: ["BadgeIcon"]
        )
    ],
    targets: [
        .target(
            name: "BadgeIcon",
            swiftSettings: [
                .enableExperimentalFeature("StrictConcurrency")
            ]
        ),
        .testTarget(
            name: "BadgeIconTests",
            dependencies: ["BadgeIcon"]
        )
    ]
)
