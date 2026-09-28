// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "DesignSystem",

    platforms: [
        .iOS(.v12)
    ],

    products: [
        .library(
            name: "DesignSystem",
            targets: ["DesignSystem"]
        )
    ],

    targets: [
        .target(
            name: "DesignSystem",
            path: "SalesforceDesignSystem",
            publicHeadersPath: ".",
            linkerSettings: [
                .linkedFramework("UIKit"),
                .linkedFramework("CoreText")
            ]
        )
    ]
)