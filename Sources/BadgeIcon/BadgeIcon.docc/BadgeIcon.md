# ``BadgeIcon``

BadgeIcon is a Swift SDK that helps you mimic native System Settings icons in SwiftUI.


## Overview

![Library logotype](Logo.png)

BadgeIcon is a Swift SDK that helps you mimic native System Settings icons in SwiftUI.

BadgeIcon comes with a bunch of predefined icons, that you can use right away in your settings screens, main menus, etc. You can also create your own icons and styles, with rich customization options.

![BadgeIcon preview](Preview.png)



## Installation

BadgeIcon can be installed with the Swift Package Manager:

```
https://github.com/danielsaidi/BadgeIcon.git
```



## Getting started

BadgeIcon has 30+ predefined icon types that you can use right away, for instance ``BadgeIcon/alert``, ``BadgeIcon/bug``, and ``BadgeIcon/email``.

You can use these badges as regular SwiftUI views, which will scale to fill the available space:

```swift
struct ContentView: View {

    var body: some View {
        BadgeIcon.calendar
    }
}
```

You can also create your own badge icons, with custom icon and badge styling:

```swift
extension BadgeIcon {

    public static let prominentError = Self(
        icon: MyCustomErrorIcon(),
        style: .init(
            badgeColor: .red
        )
    )
}
```

You can use both `Image` values or custom views as the icon.



## Repository

For more information, source code, etc., visit the [project repository](https://github.com/danielsaidi/BadgeIcon).



## License

BadgeIcon is available under the MIT license.



## Topics

### Essentials

- ``BadgeIcon/BadgeIcon``
- ``BadgeIcon/BadgeIconStyle``
