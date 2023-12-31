# Release Notes


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
