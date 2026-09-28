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

            path: ".",

            sources: [
                "SalesforceDesignSystem"
            ],

            resources: [
                .copy("SalesforceDesignSystem.bundle")
            ],

            publicHeadersPath: "include",

            linkerSettings: [
                .linkedFramework("UIKit"),
                .linkedFramework("CoreText")
            ]
        )
    ]
)