//
//  BadgeIcon+Predefined.swift
//  BadgeIcon
//
//  Created by Daniel Saidi on 2023-12-15.
//  Copyright © 2023-2024 Daniel Saidi. All rights reserved.
//

import SwiftUI

public extension BadgeIcon where Icon == Image {
    
    static var accessibility = prominent("accessibility", .blue, fill: false)
    static var airplaneMode = prominent("airplane", .orange)
    static var alert = icon("exclamationmark.triangle", .orange)
    static var appStore = icon("apple.logo", .white.opacity(0.6), .black)
    static var battery = prominent("battery.100percent", .green)
    static var bug = multicolorIcon("ladybug")
    static var calendar = icon("calendar", .red)
    static var checkmark = icon("checkmark.circle", .green)
    static var displayAndBrightness = prominent("sun.max", .blue)
    static var email = prominent("envelope", .blue)
    static var error = icon("exclamationmark.triangle", .red)
    static var export = shareIcon("square.and.arrow.up.on.square")
    static var faceId = prominent("faceid", .green)
    static var featureRequest = icon("gift", .pink)
    static var focus = prominent("moon", .indigo)
    static var headphones = prominent("beats.headphones", .gray)
    static var heart = icon("heart", .red)
    static var passwords = prominent("key", .gray)
    static var languageSettings = icon("globe", .cyan)
    static var lightbulb = multicolorIcon("lightbulb", .yellow)
    static var lock = prominent("lock", .gray)
    static var message = prominent("message", .green)
    static var mobileService = prominent("antenna.radiowaves.left.and.right", .green)
    static var notifications = prominent("bell.badge.fill", .red)
    static var palette = multicolorIcon("paintpalette")
    static var person = Self(icon: .symbol("person"))
    static var personalHotspot = prominent("personalhotspot", .green)
    static var phone = prominent("phone", .green)
    static var premium = icon("crown", .orange)
    static var privacy = prominent("hand.raised.fill", .blue)
    static var prominentAlert = prominent("exclamationmark.triangle", .orange)
    static var prominentCheckmark = prominent("checkmark.circle", .green)
    static var prominentError = prominent("exclamationmark.triangle", .red)
    static var safari = icon("safari", .blue)
    static var screenTime = prominent("hourglass", .indigo)
    static var settings = prominent("gearshape", .gray)
    static var share = shareIcon("square.and.arrow.up")
    static var shield = icon("checkmark.shield.fill", .green)
    static var star = icon("star", .yellow)
    static var soundAndHaptics = prominent("speaker.wave.3", .pink)
    static var touchId = icon("touchid", .pink)
    static var wifi = prominent("wifi", .blue)
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
