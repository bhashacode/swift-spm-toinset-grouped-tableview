// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "TOInsetGroupedTableView",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "TOInsetGroupedTableView",
            targets: ["TOInsetGroupedTableView"]
        )
    ],
    targets: [
        .target(
            name: "TOInsetGroupedTableView",
            path: "Sources/TOInsetGroupedTableView",
            publicHeadersPath: "include",
            linkerSettings: [
                .linkedFramework("UIKit")
            ]
        ),
        .testTarget(
            name: "TOInsetGroupedTableViewTests",
            dependencies: ["TOInsetGroupedTableView"],
            path: "Tests/TOInsetGroupedTableViewTests"
        )
    ]
)
