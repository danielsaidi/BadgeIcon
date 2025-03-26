# Release Notes

BadgeIcon will use semver after 1.0. 

Until then, breaking changes can happen in any version, and deprecated features may be removed in any minor version bump.



## 1.0

This version adds more icons to the library, bringing the number of predefined icons up to 49.



## 0.6

This version makes the SDK use Swift 6, enables strict concurrency, and adjusts a few things to conform to this new requirement.

### 💡 Adjustments

* `BadgeIconStyle` is no longer mutable.
* `BadgeIcon+Predefined` now uses static let instead of static var.

### 🗑️ Deprecations

* All previously deprecated code has been removed.




## 0.5

### ✨ New Features

* `BadgeIcon` has 7 new icons.
* `BadgeIcon` has new icon templates, like `.icon`.
* `BadgeIcon` now supports generic views as the main icon.
* `BadgeIconStyle` is a new type that is used to provide icon styling.

### 🗑️ Deprecations

* `BadgeIcon` has a new style-based initializer. The old initializer is deprecated.
* `BadgeIcon.key` has been renamed to `passwords`.



## 0.4

### ✨ New Features

* BadgeIcon now supports visionOS.



## 0.3

This version adds more icons and adjusts `BadgeIcon` to use percentage-based sizes and a smaller default padding.

### ✨ Features

* `BadgeIcon` has even more predefined icons.

### 💡 Adjustments

* `BadgeIcon` now uses `0.15` as the default icon padding.

### 🐛 Bug Fixes

* `BadgeIcon` now uses `iconPadding` instead of the incorrect `badgeCornerRadius`.



## 0.2.1

This version adds more icons and features. 

### ✨ Features

* `BadgeIcon` has even more predefined icons.
* `BadgeIcon` has a new `iconColorScheme` parameter.

### 🐛 Bug Fixes

* `BadgeIcon` now honors custom stroke widths.



## 0.2

This version adds more functionality to the `BadgeIcon`.

`BadgeIcon` no longer takes size parameter, but now automatically fits the available frame and adjust the default padding and corner radius to the available space. 

### ✨ Features

* `BadgeIcon` has new `badgeStrokeWidth` and `badgeCornerRadius` properties.

### 💥 Breaking Changes

* `BadgeIcon` doesn't have a size property anymore, but will automatically adjust.



## 0.1

This is the first version of the BadgeIcon library.

### ✨ Features

* `BadgeIcon` can be used to create custom badge icons.
* `BadgeIcon` also has a couple of static, predefined icons.  
