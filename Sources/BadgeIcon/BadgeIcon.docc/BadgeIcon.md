# ``BadgeIcon``

BadgeIcon is a SwiftUI library that helps you create beautiful, scalable icons.


## Overview

![Library logotype](Logo.png)

BadgeIcon is a SwiftUI library that lets you create beautiful, scalable icons, using SF Symbols or custom assets.

![BadgeIcon preview](Preview.png)

BadgeIcon comes with 49 predefined icons, and lets you create custom icons with rich customization options.



## Installation

BadgeIcon can be installed with the Swift Package Manager:

```
https://github.com/danielsaidi/BadgeIcon.git
```


## Support My Work

You can [become a sponsor][Sponsors] to help me dedicate more time on my various [open-source tools][OpenSource]. Every contribution, no matter the size, makes a real difference in keeping these tools free and actively developed.



## Getting started

BadgeIcon has 49 predefined icons, like ``BadgeIcon/alert``, ``BadgeIcon/bug``, and ``BadgeIcon/heart``, which will scale to fill the available space:

```swift
struct ContentView: View {

    var body: some View {
        BadgeIcon.calendar
        BadgeIcon.heart.frame(width: 150)
    }
}
```

You can also create your own badge icons, with a rich set of icon and badge style options:

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

You can use both `Image` values or custom views as the icon that is shown inside the badge.



## Repository

For more information, source code, etc., visit the [project repository](https://github.com/danielsaidi/BadgeIcon).



## License

BadgeIcon is available under the MIT license.



## Topics

### Essentials

- ``BadgeIcon/BadgeIcon``
- ``BadgeIcon/BadgeIconStyle``



[Email]: mailto:daniel.saidi@gmail.com
[Website]: https://danielsaidi.com
[GitHub]: https://github.com/danielsaidi
[OpenSource]: https://danielsaidi.com/opensource
[Sponsors]: https://github.com/sponsors/danielsaidi
