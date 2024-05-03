//
//  BadgeIcon+Predefined.swift
//  BadgeIcon
//
//  Created by Daniel Saidi on 2023-12-15.
//  Copyright © 2023-2024 Daniel Saidi. All rights reserved.
//

import SwiftUI

public extension BadgeIcon where Icon == Image {
    
    static var accessibility: Self { prominent("accessibility", .blue, fill: false) }
    static var airplaneMode: Self { prominent("airplane", .orange) }
    static var alert: Self { icon("exclamationmark.triangle", .orange) }
    static var appStore: Self { icon("apple.logo", .white.opacity(0.6), .black) }
    static var battery: Self { prominent("battery.100percent", .green) }
    static var bug: Self { multicolorIcon("ladybug") }
    static var calendar: Self { icon("calendar", .red) }
    static var checkmark: Self { icon("checkmark.circle", .green) }
    static var displayAndBrightness: Self { prominent("sun.max", .blue) }
    static var email: Self { prominent("envelope", .blue) }
    static var error: Self { icon("exclamationmark.triangle", .red) }
    static var export: Self { shareIcon("square.and.arrow.up.on.square") }
    static var faceId: Self { prominent("faceid", .green) }
    static var featureRequest: Self { icon("gift", .pink) }
    static var focus: Self { prominent("moon", .indigo) }
    static var headphones: Self { prominent("beats.headphones", .gray) }
    static var heart: Self { icon("heart", .red) }
    static var passwords: Self { prominent("key", .gray) }
    static var languageSettings: Self { icon("globe", .cyan) }
    static var lightbulb: Self { multicolorIcon("lightbulb", .yellow) }
    static var lock: Self { prominent("lock", .gray) }
    static var message: Self { prominent("message", .green) }
    static var mobileService: Self { prominent("antenna.radiowaves.left.and.right", .green) }
    static var notifications: Self { prominent("bell.badge.fill", .red) }
    static var palette: Self { multicolorIcon("paintpalette") }
    static var person: Self { Self(icon: .symbol("person")) }
    static var personalHotspot: Self { prominent("personalhotspot", .green) }
    static var phone: Self { prominent("phone", .green) }
    static var premium: Self { icon("crown", .orange) }
    static var privacy: Self { prominent("hand.raised.fill", .blue) }
    static var prominentAlert: Self { prominent("exclamationmark.triangle", .orange) }
    static var prominentCheckmark: Self { prominent("checkmark.circle", .green) }
    static var prominentError: Self { prominent("exclamationmark.triangle", .red) }
    static var safari: Self { icon("safari", .blue) }
    static var screenTime: Self { prominent("hourglass", .indigo) }
    static var settings: Self { prominent("gearshape", .gray) }
    static var share: Self { shareIcon("square.and.arrow.up") }
    static var shield: Self { icon("checkmark.shield.fill", .green) }
    static var star: Self { icon("star", .yellow) }
    static var soundAndHaptics: Self { prominent("speaker.wave.3", .pink) }
    static var touchId: Self { icon("touchid", .pink) }
    static var wifi: Self { prominent("wifi", .blue) }
}

private extension BadgeIcon where Icon == Image {
    
    /// An icon with a certain fill color.
    static func icon(
        _ iconName: String,
        _ iconColor: Color,
        _ badgeIcon: Color = .white
    ) -> Self {
        .init(
            icon: .symbol(iconName),
            style: .init(
                iconColor: iconColor,
                badgeColor: badgeIcon
            )
        )
    }
    
    /// A multicolor icon has an image icon on a white badge.
    static func multicolorIcon(
        _ iconName: String,
        _ color: Color = .black
    ) -> Self {
        .init(
            icon: .symbol(iconName),
            style: .init(
                iconColor: color,
                iconColorScheme: .light,
                iconRenderingMode: .multicolor
            )
        )
    }
    
    /// A prominent icon has a white icon on a colored badge.
    static func prominent(
        _ iconName: String,
        _ badgeColor: Color,
        fill: Bool = true
    ) -> Self {
        .init(
            icon: .symbol(iconName),
            style: .init(
                iconFill: fill,
                badgeColor: badgeColor
            )
        )
    }
    
    /// A share icon has a different icon padding and offset.
    static func shareIcon(
        _ iconName: String
    ) -> Self {
        .init(
            icon: .symbol(iconName),
            style: .init(
                iconFill: false,
                iconOffset: .init(x: 0, y: -0.03),
                iconPadding: 0.15
            )
        )
    }
}

@ViewBuilder
private var previewItems: some View {
    item(.accessibility, "accessibility")
    item(.airplaneMode, "airplaneMode")
    item(.alert, "alert")
    item(.appStore, "appStore")
    item(.battery, "battery")
    item(.bug, "bug")
    item(.calendar, "calendar")
    item(.checkmark, "checkmark")
    item(.displayAndBrightness, "displayAndBrightness")
    item(.email, "email")
    item(.error, "error")
    item(.export, "export")
    item(.faceId, "faceId")
    item(.featureRequest, "featureRequest")
    item(.focus, "focus")
    item(.headphones, "headphones")
    item(.heart, "heart")
    item(.languageSettings, "languageSettings")
    item(.lightbulb, "lightbulb")
    item(.lock, "lock")
    item(.message, "messages")
    item(.mobileService, "mobileService")
    item(.notifications, "notifications")
    item(.palette, "palette")
    item(.passwords, "passwords")
    item(.person, "person")
    item(.personalHotspot, "personalHotspot")
    item(.phone, "phone")
    item(.premium, "premium")
    item(.privacy, "privacy")
    item(.prominentAlert, "prominentAlert")
    item(.prominentCheckmark, "prominentCheckmark")
    item(.prominentError, "prominentError")
    item(.safari, "safari")
    item(.screenTime, "screenTime")
    item(.settings, "settings")
    item(.share, "share")
    item(.shield, "shield")
    item(.soundAndHaptics, "soundAndHaptics")
    item(.star, "star")
    item(.touchId, "touchId")
    item(.wifi, "wifi")
}

#Preview("Grid") {
    ScrollView(.vertical) {
        LazyVGrid(columns: [.init(.adaptive(minimum: 40, maximum: 50))]) {
            previewItems
        }
        .padding()
    }
    .labelStyle(.iconOnly)
}

#Preview("List") {
    List {
        previewItems
    }
}

private func item(
    _ view: BadgeIcon<Image>,
    _ name: String
) -> some View {
    Label(
        title: { Text(name) },
        icon: { view }
    )
}
