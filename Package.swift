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

    .target(
      name: "DesignSystem",
      path: "SalesforceDesignSystem",
      exclude: [
          "DesignSystemTests"
      ],
      publicHeadersPath: ".",
      cSettings: [
        .headerSearchPath("."),
        .headerSearchPath("Generated"),
        .headerSearchPath("Generated/Extensions"),
      ]
      linkerSettings: [
          .linkedFramework("UIKit"),
          .linkedFramework("CoreText")
      ]
    )
)