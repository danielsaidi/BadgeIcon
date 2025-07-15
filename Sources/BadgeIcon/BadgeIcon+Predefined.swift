//
//  BadgeIcon+Predefined.swift
//  BadgeIcon
//
//  Created by Daniel Saidi on 2023-12-15.
//  Copyright © 2023-2025 Daniel Saidi. All rights reserved.
//

import SwiftUI

public extension BadgeIcon where Icon == Image {
    
    static let accessibility = prominent("accessibility", .blue, fill: false)
    static let airplaneMode = prominent("airplane", .orange)
    static let alert = icon("exclamationmark.triangle", .orange)
    static let appStore = icon("apple.logo", .white.opacity(0.6), .black)
    static let battery = prominent("battery.100percent", .green)
    static let bug = multicolorIcon("ladybug")
    static let calendar = icon("calendar", .red)
    static let camera = prominent("camera", .gray)
    static let checkmark = icon("checkmark.circle", .green)
    static let controlCenter = prominent("switch.2", .gray)
    static let developer = prominent("hammer", .gray)
    static let displayAndBrightness = prominent("sun.max", .blue)
    static let email = prominent("envelope", .blue)
    static let emoji = paletteIcon("face.smiling.inverse", [.black, .yellow])
    static let error = icon("exclamationmark.triangle", .red)
    static let export = shareIcon("square.and.arrow.up.on.square")
    static let faceId = prominent("faceid", .green)
    static let featureRequest = icon("gift", .pink)
    static let focus = prominent("moon", .indigo)
    static let headphones = prominent("beats.headphones", .gray)
    static let heart = icon("heart", .red)
    static let passwords = prominent("key", .gray)
    static let iCloud = icon("icloud.fill", .cyan.opacity(0.8))
    static let languageSettings = icon("globe", .cyan)
    static let lightbulb = multicolorIcon("lightbulb", .yellow)
    static let lock = prominent("lock", .gray)
    static let message = prominent("message", .green)
    static let mobileService = prominent("antenna.radiowaves.left.and.right", .green)
    static let notifications = prominent("bell.badge.fill", .red)
    static let palette = multicolorIcon("paintpalette")
    static let person = Self(icon: .symbol("person"))
    static let personalHotspot = prominent("personalhotspot", .green)
    static let phone = prominent("phone", .green)
    static let premium = icon("crown", .orange)
    static let privacy = prominent("hand.raised.fill", .blue)
    static let prominentAlert = prominent("exclamationmark.triangle", .orange)
    static let prominentCheckmark = prominent("checkmark.circle", .green)
    static let prominentError = prominent("exclamationmark.triangle", .red)
    static let safari = icon("safari", .blue)
    static let screenTime = prominent("hourglass", .indigo)
    static let search = prominent("magnifyingglass", .gray)
    static let settings = prominent("gearshape", .gray)
    static let share = shareIcon("square.and.arrow.up")
    static let shield = icon("checkmark.shield.fill", .green)
    static let sideButton = prominent("button.vertical.left.press", .blue)
    static let soundAndHaptics = prominent("speaker.wave.3", .pink)
    static let sos = prominent("sos", .red)
    static let star = icon("star", .yellow)
    static let touchId = icon("touchid", .pink)
    static let wifi = prominent("wifi", .blue)
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
    
    /// A multicolor icon has an icon on a white badge.
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

    /// A palette icon has an icon on a white badge.
    static func paletteIcon(
        _ iconName: String,
        _ colors: [Color]
    ) -> Self {
        .init(
            icon: .symbol(iconName),
            style: .init(
                iconColors: colors,
                iconRenderingMode: .palette
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

@MainActor
@ViewBuilder
private var previewItems: some View {
    item(.accessibility, "accessibility")
    item(.airplaneMode, "airplaneMode")
    item(.alert, "alert")
    item(.appStore, "appStore")
    item(.battery, "battery")
    item(.bug, "bug")
    item(.calendar, "calendar")
    item(.camera, "camera")
    item(.checkmark, "checkmark")
    item(.controlCenter, "controlCenter")
    item(.displayAndBrightness, "displayAndBrightness")
    item(.developer, "developer")
    item(.email, "email")
    item(.emoji, "emoji")
    item(.error, "error")
    item(.export, "export")
    item(.faceId, "faceId")
    item(.featureRequest, "featureRequest")
    item(.focus, "focus")
    item(.headphones, "headphones")
    item(.heart, "heart")
    item(.iCloud, "iCloud")
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
    item(.search, "search")
    item(.settings, "settings")
    item(.share, "share")
    item(.shield, "shield")
    item(.sideButton, "sideButton")
    item(.soundAndHaptics, "soundAndHaptics")
    item(.sos, "sos")
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
