<p align="center">
    <img src ="Resources/Logo_Rounded.png" alt="BadgeIcon Logo" title="BadgeIcon" />
</p>

<p align="center">
    <img src="https://img.shields.io/github/v/release/danielsaidi/BadgeIcon?color=%2300550&sort=semver" alt="Version" />
    <img src="https://img.shields.io/badge/Swift-6.0-orange.svg" alt="Swift 6.0" />
    <img src="https://img.shields.io/badge/platform-SwiftUI-blue.svg" alt="Swift UI" title="Swift UI" />
    <img src="https://img.shields.io/github/license/danielsaidi/BadgeIcon" alt="MIT License" />
    <a href="https://twitter.com/danielsaidi"><img src="https://img.shields.io/twitter/url?label=Twitter&style=social&url=https%3A%2F%2Ftwitter.com%2Fdanielsaidi" alt="Twitter: @danielsaidi" title="Twitter: @danielsaidi" /></a>
    <a href="https://mastodon.social/@danielsaidi"><img src="https://img.shields.io/mastodon/follow/000253346?label=mastodon&style=social" alt="Mastodon: @danielsaidi@mastodon.social" title="Mastodon: @danielsaidi@mastodon.social" /></a>
</p>


## About BadgeIcon

BadgeIcon is a SwiftUI SDK that helps you mimic native System Settings icons.

BadgeIcon comes with a bunch of predefined icons:

<p align="center">
    <img src ="Resources/Preview_Grid.png" alt="BadgeIcon Preview" title="BadgeIcon Preview" />
</p>

You can also create your own icons, with rich customization options. 




## Installation

BadgeIcon can be installed with the Swift Package Manager:

```
https://github.com/danielsaidi/BadgeIcon.git
```



## Getting started

BadgeIcon has 30+ predefined icon types, for instance `.alert`, `.bug`, `.heart`, etc.

You can use these badges as regular images, which will scale to fill the available space:

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



## Documentation

The online [documentation][Documentation] has more information, articles, code examples, etc.



## Support my work 

You can [sponsor me][Sponsors] on GitHub Sponsors or [reach out][Email] for paid support, to help support my [open-source projects][OpenSource].

Your support makes it possible for me to put more work into these projects and make them the best they can be.



## Contact

Feel free to reach out if you have questions or if you want to contribute in any way:

* Website: [danielsaidi.com][Website]
* Mastodon: [@danielsaidi@mastodon.social][Mastodon]
* Twitter: [@danielsaidi][Twitter]
* E-mail: [daniel.saidi@gmail.com][Email]



## License

BadgeIcon is available under the MIT license. See the [LICENSE][License] file for more info.



[Email]: mailto:daniel.saidi@gmail.com
[Website]: https://www.danielsaidi.com
[GitHub]: https://www.github.com/danielsaidi
[Twitter]: https://www.twitter.com/danielsaidi
[Mastodon]: https://mastodon.social/@danielsaidi
[Sponsors]: https://github.com/sponsors/danielsaidi
[OpenSource]: https://www.danielsaidi.com/opensource

[Documentation]: https://danielsaidi.github.io/BadgeIcon/
[Getting-Started]: https://danielsaidi.github.io/BadgeIcon/documentation/badgeicon/getting-started
[License]: https://github.com/danielsaidi/BadgeIcon/blob/master/LICENSE
