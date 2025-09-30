<p align="center">
    <img src="Resources/Icon_Badge.png" alt="Project Icon" width="250" />
</p>

<p align="center">
    <img src="https://img.shields.io/github/v/release/danielsaidi/BadgeIcon?color=%2300550&sort=semver" alt="Version" />
    <img src="https://img.shields.io/badge/Swift-6.1-orange.svg" alt="Swift 6.1" />
    <img src="https://img.shields.io/badge/platform-SwiftUI-blue.svg" alt="Swift UI" title="Swift UI" />
    <a href="https://danielsaidi.github.io/BadgeIcon"><img src="https://img.shields.io/badge/documentation-web-blue.svg" alt="Documentation" /></a>
    <a href="https://github.com/danielsaidi/BadgeIcon/blob/master/LICENSE"><img src="https://img.shields.io/github/license/danielsaidi/BadgeIcon" alt="MIT License" /></a>
    <a href="https://github.com/sponsors/danielsaidi"><img src="https://img.shields.io/badge/sponsor-GitHub-red.svg" alt="Sponsor my work" /></a>
</p>


# BadgeIcon

BadgeIcon is a SwiftUI library that lets you create beautiful, scalable icons, using SF Symbols or custom assets:

<p align="center">
    <img src="https://github.com/danielsaidi/BadgeIcon/releases/download/2.0.0/Demo.gif" alt="Demo gif" />
</p>

BadgeIcon comes with **118** predefined icons, and lets you create custom icons with rich customization options. 




## Installation

BadgeIcon can be installed with the Swift Package Manager:

```
https://github.com/danielsaidi/BadgeIcon.git
```


## Support My Work

You can [become a sponsor][Sponsors] to help me dedicate more time on my various [open-source tools][OpenSource]. Every contribution, no matter the size, makes a real difference in keeping these tools free and actively developed.



## Getting started

BadgeIcon has **118** predefined icons, like `.alert`, `.bug`, and `.heart`, which will scale to fill the available space:

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



## Documentation

The online [documentation][Documentation] has more information, articles, code examples, etc.



## Demo Application

The `Demo` folder has a demo app that lets you explore the library and try changing the app icon.



## Contact

Feel free to reach out if you have questions or want to contribute in any way:

* Website: [danielsaidi.com][Website]
* E-mail: [daniel.saidi@gmail.com][Email]
* Bluesky: [@danielsaidi@bsky.social][Bluesky]
* Mastodon: [@danielsaidi@mastodon.social][Mastodon]



## License

BadgeIcon is available under the MIT license. See the [LICENSE][License] file for more info.



[Email]: mailto:daniel.saidi@gmail.com
[Website]: https://danielsaidi.com
[GitHub]: https://github.com/danielsaidi
[OpenSource]: https://danielsaidi.com/opensource
[Sponsors]: https://github.com/sponsors/danielsaidi

[Bluesky]: https://bsky.app/profile/danielsaidi.bsky.social
[Mastodon]: https://mastodon.social/@danielsaidi
[Twitter]: https://twitter.com/danielsaidi

[Documentation]: https://danielsaidi.github.io/BadgeIcon/
[Getting-Started]: https://danielsaidi.github.io/BadgeIcon/documentation/badgeicon/getting-started
[License]: https://github.com/danielsaidi/BadgeIcon/blob/master/LICENSE
