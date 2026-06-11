Unreleased Release Notes
=============================================================

### Changed

* Removed CocoaPods support and legacy Xcode project packaging.
* Added first-class Swift Package Manager support with the library product `TOInsetGroupedTableView`.
* Moved library sources into `Sources/TOInsetGroupedTableView/` and tests into `Tests/TOInsetGroupedTableViewTests/`.
* Documented the intended minimum supported iOS runtime as 15.6. `Package.swift` declares `.iOS(.v15)` because SwiftPM cannot express iOS 15.6 exactly.

x.y.z Release Notes (yyyy-MM-dd)
=============================================================

1.0.1 Release Notes (2020-04-11)
=============================================================

### Added

* An API override for `UITableView(frame:style)` to ensure instances created with that method have the style value set properly.

1.0.0 Release Notes (2020-04-10)
=============================================================

* Initial Release! 🎉
