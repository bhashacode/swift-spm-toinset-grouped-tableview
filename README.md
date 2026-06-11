# TOInsetGroupedTableView

<p align="center">
<img src="https://raw.githubusercontent.com/TimOliver/TOInsetGroupedTableView/master/screenshot.jpg" width ="700" />
</p>

[![CI](https://github.com/TimOliver/TOInsetGroupedTableView/workflows/CI/badge.svg)](https://github.com/TimOliver/TOInsetGroupedTableView/actions?query=workflow%3ACI)
[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/TimOliver/TOInsetGroupedTableView/master/LICENSE)
[![Platform](https://img.shields.io/badge/platform-iOS%2015.6%2B-blue.svg)](#requirements)
[![SwiftPM](https://img.shields.io/badge/package-SwiftPM-orange.svg)](#installation)
[![PayPal](https://img.shields.io/badge/paypal-donate-blue.svg)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=M4RKULAVKV7K8)
[![Twitch](https://img.shields.io/badge/twitch-timXD-6441a5.svg)](http://twitch.tv/timXD)

`TOInsetGroupedTableView` is a `UITableView` subclass that preserves the original project API while this fork is distributed as a Swift Package Manager-only package.

The original library back-ported the iOS 13 `.insetGrouped` table-view style to older iOS releases. This fork's intended minimum runtime is iOS 15.6, so supported apps use the system inset-grouped implementation while keeping the same `TOInsetGroupedTableView` / `InsetGroupedTableView` integration surface.

## Features

* Keeps the existing Objective-C `TOInsetGroupedTableView` API and Swift `InsetGroupedTableView` name.
* Uses the native system inset-grouped implementation on supported iOS versions.
* Ships as a clean Swift Package Manager library product with no CocoaPods or Carthage integration.
* Requires no package resources or third-party dependencies.

## Requirements

* Xcode 14 or newer recommended.
* Swift Package Manager.
* Minimum supported iOS runtime: 15.6.

> SwiftPM cannot express iOS 15.6 exactly in `Package.swift`; the package manifest declares `.iOS(.v15)` and this README documents iOS 15.6 as the intended minimum runtime.

## Installation

### Swift Package Manager

In Xcode:

1. Open your project.
2. Go to File > Add Package Dependencies.
3. Enter this repository URL.
4. Select the required version, branch, or commit.
5. Add the `TOInsetGroupedTableView` package product to your app target.

Minimum supported iOS version: 15.6.

If this fork does not have a release tag yet, select the branch or commit you want to consume when adding the package in Xcode.

## Usage

Integrating `TOInsetGroupedTableView` is extremely simple as it introduces no new APIs or changes any external inputs. All that is needed is to replace `UITableView()` instantiations with `TOInsetGroupedTableView()`.

### Swift

Import the package product's module:

```swift
import TOInsetGroupedTableView
```

In Swift, the class is renamed to `InsetGroupedTableView`. In order to integrate it, simply replace any instances of

```swift
self.tableView = UITableView(frame: .zero, style: .insetGrouped)
```

with

```swift
self.tableView = InsetGroupedTableView(frame: .zero)
```

No other changes are needed.

### Objective-C

Import the package product's public header:

```objc
#import <TOInsetGroupedTableView/TOInsetGroupedTableView.h>
```

Just like in Swift, all that is required is to rename any instantiations of `UITableView` with `TOInsetGroupedTableView`.

For example, simply replace any instances of:

```objc
self.tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleInsetGrouped];
```

with

```objc
self.tableView = [[TOInsetGroupedTableView alloc] initWithFrame:CGRectZero];
```

## SwiftPM package notes

* `Package.swift` is located at the repository root.
* The library product and target are both named `TOInsetGroupedTableView`.
* Source files live under `Sources/TOInsetGroupedTableView/`.
* Public headers live under `Sources/TOInsetGroupedTableView/include/`.
* The package has no bundled resources and no third-party package dependencies.

## Credits

`TOInsetGroupedTableView` was created by [Tim Oliver](http://twitter.com/TimOliverAU).

## How is this library different to [`TORoundedTableView`](https://github.com/TimOliver/TORoundedTableView)?

`TORoundedTableView` is a library with a similar goal: replicating the rounded corner table view style that has been present in Settings.app since iOS 7.

`TORoundedTableView` was originally released in late 2016 with the explicit goal of supporting iOS versions 8.0 and above.

Due to the APIs available on iOS at the time, as well as the relative graphics performance of the hardware of that era, `TORoundedTableView` required far more modification of `UITableView` and its components to achieve the effect, and maintain high FPS.

Most notably, in order to have the rounded caps on the cells, it was also necessary to create subclasses of `UITableViewCell` as well, which increased the complexity of the implementation, and meant it couldn't really be simply 'dropped in' to existing implementations.

By focusing on just the most recent iOS versions, where OpenGL has been completely removed, and there are now more Core Animation APIs, `TOInsetGroupedTableView` is able to achieve the same effect as `TORoundedTableView` but without needing to subclass any of the cells.

Additionally, by observing how `.insetGrouped` behaves in iOS 13, it was also possible to configure `TOInsetGroupedTableView` to work alongside it, allowing for the same code to default back to the iOS 13 implementation when possible.

# License

`TOInsetGroupedTableView` is available under the MIT license. Please see the [LICENSE](LICENSE) file for more information.
