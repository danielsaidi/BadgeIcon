//
//  BadgeIcon+Predefined.swift
//  BadgeIcon
//
//  Created by Daniel Saidi on 2023-12-15.
//  Copyright © 2023-2024 Daniel Saidi. All rights reserved.
//

import SwiftUI

public extension BadgeIcon where Icon == Image {
    
    static var accessibility = circular(
        icon: .symbol("accessibility"),
        iconColor: .white,
        iconFill: false,
        badgeColor: .blue
    )
    
    static var airplaneMode = prominent("airplane", .orange)
    
    static var alert = Self(
        icon: .symbol("exclamationmark.triangle"),
        style: .init(iconColor: .orange)
    )
    
    static var appStore = Self(
        icon: Image(systemName: "apple.logo"),
        style: .init(
            iconColor: .white.opacity(0.6),
            badgeColor: .black.opacity(0.9)
        )
    )
    
    static var battery = prominent("battery.100percent", .green)
    
    static var bug = Self(
        icon: .symbol("ladybug"),
        style: .init(iconRenderingMode: .multicolor)
    )
    
    static var calendar = Self(
        icon: .symbol("calendar"),
        style: .init(iconColor: .red)
    )
    
    static var checkmark = circular(
        icon: .symbol("checkmark.circle"),
        iconColor: .green
    )
    
    static var displayAndBrightness = prominent("sun.max", .blue)
    static var email = prominent("envelope", .blue)
    
    static var error = Self(
        icon: .symbol("exclamationmark.triangle"),
        style: .init(iconColor: .red)
    )
    
    static var export = Self(
        icon: .symbol("square.and.arrow.up.on.square"),
        style: .init(
            iconFill: false,
            iconOffset: .init(x: 0, y: -0.03),
            iconPadding: 0.15
        )
    )
    
    static var faceId = prominent("faceid", .green)
    
    static var featureRequest = Self(
        icon: .symbol("gift"),
        style: .init(iconColor: .pink)
    )
    static var focus = prominent("moon", .indigo)
    static var headphones = prominent("beats.headphones", .gray)
    
    static var heart = Self(
        icon: .symbol("heart"),
        style: .init(iconColor: .red)
    )
    
    static var passwords = prominent("key", .gray)
    
    static var languageSettings = circular(
        icon: .symbol("globe"),
        iconColor: .cyan
    )
    
    static var lightbulb = Self(
        icon: .symbol("lightbulb"),
        style: .init(
            iconColor: .yellow,
            iconColorScheme: .light,
            iconRenderingMode: .multicolor
        )
    )
    
    static var lock = prominent("lock", .gray)
    static var message = prominent("message", .green)
    static var mobileService = prominent("antenna.radiowaves.left.and.right", .green)
    static var notifications = prominent("bell.badge.fill", .red)
    
    static var palette = Self(
        icon: .symbol("paintpalette"),
        style: .init(
            iconColor: nil,
            iconRenderingMode: .multicolor
        )
    )
    
    static var person = Self(
        icon: .symbol("person")
    )
    
    static var personalHotspot = prominent("personalhotspot", .green)
    static var phone = prominent("phone", .green)
    
    static var premium = Self(
        icon: .symbol("crown"),
        style: .init(iconColor: .orange)
    )
    
    static var privacy = prominent("hand.raised.fill", .blue)
    static var prominentAlert = prominent("exclamationmark.triangle", .orange)
    static var prominentCheckmark = prominent("checkmark.circle", .green)
    static var prominentError = prominent("exclamationmark.triangle", .red)
    
    static var safari = circular(
        icon: .symbol("safari"),
        iconColor: .blue
    )
    static var screenTime = prominent("hourglass", .indigo)
    static var settings = prominent("gearshape", .gray)
    
    static var share = Self(
        icon: .symbol("square.and.arrow.up"),
        style: .init(
            iconFill: false,
            iconOffset: .init(x: 0, y: -0.03),
            iconPadding: 0.15
        )
    )
    
    static var shield = Self(
        icon: .symbol("checkmark.shield.fill"),
        style: .init(iconColor: .green)
    )
    
    static var star = Self(
        icon: .symbol("star"),
        style: .init(iconColor: .yellow)
    )
    
    static var soundAndHaptics = prominent("speaker.wave.3", .pink)
    
    static var touchId = Self(
        icon: .symbol("touchid"),
        style: .init(iconColor: .pink)
    )
    
    static var wifi = prominent("wifi", .blue)
    
    static func circular(
        icon: Image,
        iconColor: Color,
        iconFill: Bool = true,
        iconPadding: Double? = nil,
        badgeColor: Color? = nil
    ) -> Self {
        .init(
            icon: icon,
            style: .init(
                iconColor: iconColor,
                iconFill: iconFill,
                iconPadding: iconPadding ?? 0.11,
                badgeColor: badgeColor ?? .white
            )
        )
    }
}

private extension BadgeIcon where Icon == Image {
    
    static func prominent(
        _ iconName: String,
        _ badgeColor: Color
    ) -> Self {
        .init(
            icon: .symbol(iconName),
            style: .init(badgeColor: badgeColor)
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
