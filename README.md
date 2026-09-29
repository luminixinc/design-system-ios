# DesignSystem for iOS

An Objective-C implementation of Salesforce Lightning Design System design tokens for iOS, packaged for use with **Swift Package Manager**.

This repository is a maintained fork of the archived Salesforce [`design-system-ios`](https://github.com/salesforce-ux/design-system-ios) project. It has been reorganized and simplified specifically for modern Swift Package Manager integration.

The package preserves the existing Objective-C API while removing the legacy CocoaPods, Xcode project, demo, test, and token-generation infrastructure from the original repository.

## Installation

### Swift Package Manager

In Xcode, select:

**File → Add Package Dependencies…**

and enter the repository URL:

```text
https://github.com/luminixinc/design-system-ios.git
```

Select the appropriate branch, tag, or version for your project and add the `DesignSystem` product to your application target.

## Objective-C Usage

Import the DesignSystem umbrella header:

```objc
#import <DesignSystem/SalesforceDesignSystem.h>
```

Alternatively, the module can be imported directly:

```objc
@import DesignSystem;
```

Individual public headers are also available through the `DesignSystem` module.

For example:

```objc
#import <DesignSystem/SLDSColor.h>
#import <DesignSystem/UIFont+SLDSFont.h>
```

## Package Structure

The project has been reorganized into a conventional Swift Package Manager layout:

```text
Sources/
└── DesignSystem/
    ├── include/
    │   └── DesignSystem/
    │       ├── SalesforceDesignSystem.h
    │       ├── SalesforceDesignSystemNames.h
    │       ├── SLDSColor.h
    │       ├── SLDSFont.h
    │       ├── SLDSIcon.h
    │       ├── SLDSName.h
    │       ├── SLDSSize.h
    │       ├── NSString+SLDSName.h
    │       ├── UIColor+SLDSColor.h
    │       ├── UIFont+SLDSFont.h
    │       └── UIImage+SLDSIcon.h
    │
    ├── SLDSFont.m
    ├── NSString+SLDSName.m
    ├── UIColor+SLDSColor.m
    ├── UIFont+SLDSFont.m
    ├── UIImage+SLDSIcon.m
    │
    └── Resources/
        └── SalesforceDesignSystem.bundle/
```

The public Objective-C headers are exposed as the `DesignSystem` Clang module.

## Framework Dependencies

The package links against the following Apple frameworks:

- UIKit
- CoreText

These dependencies are managed automatically by Swift Package Manager.

## Resources

The original `SalesforceDesignSystem.bundle` is included as a package resource and contains the fonts, icons, and other assets required by the library.

Applications using functionality that depends on bundled resources should verify font and icon loading after upgrading the package.

## About This Fork

The original Salesforce project predates widespread Swift Package Manager adoption and was primarily distributed through CocoaPods.

This fork:

- adds Swift Package Manager support
- reorganizes the Objective-C headers into a standard public include directory
- preserves the existing Objective-C API where possible
- preserves the original Salesforce resource bundle
- removes CocoaPods integration
- removes the legacy Xcode project
- removes demo and test targets
- removes the Node/gulp token-generation toolchain
- removes files that are not needed to consume the library as a dependency

This repository is intended to provide a stable, lightweight dependency for applications that still rely on the original Salesforce Design System iOS APIs.

It is **not** intended to track current Salesforce Lightning Design System releases or regenerate design tokens from newer SLDS versions.

## Upstream Project

Original project:

```text
https://github.com/salesforce-ux/design-system-ios
```

This fork is based on the legacy Salesforce Design System iOS implementation associated with the `3.1.x` release line.

Salesforce has archived the original project and is no longer actively maintaining it.

## Maintaining This Fork

Changes should generally be limited to:

- Swift Package Manager compatibility
- compatibility with newer versions of Xcode and iOS
- bug fixes required by consuming applications
- packaging and resource-loading fixes

Changes to the underlying Salesforce design tokens should be made deliberately, since the original token-generation toolchain is no longer included in this repository.

## License

This project retains the licensing of the original Salesforce project.

See [`LICENSE.txt`](LICENSE.txt) for details.

Some bundled resources, including fonts, icons, and images, may be subject to separate licensing terms inherited from the original Salesforce project.