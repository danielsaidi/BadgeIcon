# Release Notes

[BadgeIcon](https://github.com/danielsaidi/BadgeIcon) uses semantic versioning with the following strategy:

* Deprecations can happen in any version.
* Deprecations are only removed in `major` updates.
* Breaking changes must only occur in `major` updates.
* Breaking changes *can* occur in non-major updates, if the alternative is worse.



## 2.1.5

### 🗑️ Deprecations

* `BadgeIcon`'s `scaledForList()` extension is renamed to `scaledForListLabel()`.



## 2.1.4

### ✨ Features

* `BadgeIcon` has a new `scaledForList()` extension.

### 💡 Changes

* `BadgeIcon.font` is now rendered with `.blue` color.



## 2.1.3

### 🐛 Bug Fixes

* `BadgeIcon.lightbulb` is now rendered with `.palette` mode.



## 2.1.2

### 🐛 Bug Fixes

* `BadgeIcon` fixes the dark mode badge color for more icons.



## 2.1.1

### 🐛 Bug Fixes

* `BadgeIcon` now uses a more discrete stroke for white badges.



## 2.1

This version improves dark mode support.

### ✨ Features

* `BadgeIcon` has a new, optional dark mode icon.
* `BadgeIconStyle` has a new, optional dark mode badge color.

### 🐛 Bug Fixes

* `BadgeIcon` now uses a black badge in dark mode for many icons.
* `BadgeIcon.emoji` now renders correctly in both light and dark mode.



## 2.0

### ✨ Features

* `BadgeIcon` has a new `name` and `label` property.
* `BadgeIcon` has a new static `predefined` property.

### 💡 Adjustments

* The package now uses Swift 6.1. 
* There is a new demo app that targets iOS 26. 



## 1.3

### ✨ Features

* `BadgeIcon` has a new `.font` icon.

### 💡 Adjustments

* `BadgeIcon.clipboard` has been redesigned.



## 1.2.1

### 🐛 Bug Fixes

* `BadgeIcon.lightbulb` has been restored.



## 1.2

This version adds more icons to the library, bringing the number of predefined icons up to 118!

### ✨ Features

* `BadgeIcon` has 68 new icons.
* `BadgeIcon` has new public icon builders for standard styles.



## 1.1

This version adds more icons to the library, bringing the number of predefined icons up to 50.

### ✨ Features

* `BadgeIcon` has a new `.emoji` icon.
* `BadgeIcon` has new support for defining palette icons.



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

### ✨ Features

* `BadgeIcon` has 7 new icons.
* `BadgeIcon` has new icon templates, like `.icon`.
* `BadgeIcon` now supports generic views as the main icon.
* `BadgeIconStyle` is a new type that is used to provide icon styling.

### 🗑️ Deprecations

* `BadgeIcon` has a new style-based initializer. The old initializer is deprecated.
* `BadgeIcon.key` has been renamed to `passwords`.



## 0.4

### ✨ Features

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
