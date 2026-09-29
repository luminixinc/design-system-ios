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

            path: "Sources/DesignSystem",

            sources: [
                "SLDSFont.m",
                "NSString+SLDSName.m",
                "UIColor+SLDSColor.m",
                "UIFont+SLDSFont.m",
                "UIImage+SLDSIcon.m"
            ],

            resources: [
                .copy("Resources")
            ],

            publicHeadersPath: "include",

            cSettings: [
                .headerSearchPath("include/DesignSystem")
            ],

            linkerSettings: [
                .linkedFramework("UIKit"),
                .linkedFramework("CoreText")
            ]
        )
    ]
)