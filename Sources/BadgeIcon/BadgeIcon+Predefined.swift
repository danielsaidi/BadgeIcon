//
//  BadgeIcon+Predefined.swift
//  BadgeIcon
//
//  Created by Daniel Saidi on 2023-12-15.
//  Copyright © 2023-2024 Daniel Saidi. All rights reserved.
//

import SwiftUI

public extension BadgeIcon {
    
    static var accessibility = circular(
        icon: .symbol("accessibility"),
        iconColor: .white,
        iconFill: false,
        badgeColor: .blue
    )
    
    static var airplaneMode = Self(
        icon: .symbol("airplane"),
        style: .init(
            badgeColor: .orange
        )
    )
    
    static var alert = Self(
        icon: .symbol("exclamationmark.triangle"),
        style: .init(
            iconColor: .orange
        )
    )
    
    static var appStore = Self(
        icon: Image(systemName: "apple.logo"),
        style: .init(
            iconColor: .white.opacity(0.6),
            badgeColor: .black.opacity(0.9)
        )
    )
    
    static var battery = Self(
        icon: Image(systemName: "battery.100percent"),
        style: .init(
            badgeColor: .green
        )
    )
    
    static var bug = Self(
        icon: .symbol("ladybug"),
        style: .init(
            iconRenderingMode: .multicolor
        )
    )
    
    static var calendar = Self(
        icon: .symbol("calendar"),
        style: .init(
            iconColor: .red
        )
    )
    
    static var checkmark = circular(
        icon: .symbol("checkmark.circle"),
        iconColor: .green
    )
    
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
    
    static var email = Self(
        icon: .symbol("envelope"),
        style: .init(
            iconColor: .white,
            badgeColor: .blue
        )
    )
    
    static var error = Self(
        icon: .symbol("exclamationmark.triangle"),
        style: .init(
            iconColor: .red
        )
    )
    
    static var export = Self(
        icon: .symbol("square.and.arrow.up.on.square"),
        style: .init(
            iconFill: false,
            iconOffset: .init(x: 0, y: -0.03),
            iconPadding: 0.15
        )
    )
    
    static var faceId = Self(
        icon: .symbol("faceid"),
        style: .init(
            badgeColor: .green
        )
    )
    
    static var featureRequest = Self(
        icon: .symbol("gift"),
        style: .init(
            iconColor: .pink
        )
    )
    
    static var heart = Self(
        icon: .symbol("heart"),
        style: .init(
            iconColor: .red
        )
    )
    
    static var key = Self(
        icon: .symbol("key"),
        style: .init(
            badgeColor: .gray
        )
    )
    
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
    
    static var lock = Self(
        icon: .symbol("lock"),
        style: .init(
            badgeColor: .gray
        )
    )
    
    static var message = Self(
        icon: .symbol("message"),
        style: .init(
            badgeColor: .green
        )
    )
    
    static var notifications = Self(
        icon: .symbol("bell.badge.fill"),
        style: .init(
            badgeColor: .red
        )
    )
    
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
    
    static var phone = Self(
        icon: .symbol("phone"),
        style: .init(
            badgeColor: .green
        )
    )
    
    static var premium = Self(
        icon: .symbol("crown"),
        style: .init(
            iconColor: .orange
        )
    )
    
    static var privacy = Self(
        icon: .symbol("hand.raised.fill"),
        style: .init(
            badgeColor: .blue
        )
    )
    
    static var prominentAlert = Self(
        icon: .symbol("exclamationmark.triangle"),
        style: .init(
            iconColor: .white,
            badgeColor: .orange
        )
    )
    
    static var prominentCheckmark = Self(
        icon: .symbol("checkmark.circle"),
        style: .init(
            iconColor: .white,
            badgeColor: .green
        )
    )
    
    static var prominentError = Self(
        icon: .symbol("exclamationmark.triangle"),
        style: .init(
            iconColor: .white,
            badgeColor: .red
        )
    )
    
    static var safari = circular(
        icon: .symbol("safari"),
        iconColor: .blue
    )
    
    static var settings = Self(
        icon: .symbol("gearshape"),
        style: .init(
            badgeColor: .gray
        )
    )
    
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
        style: .init(
            iconColor: .green
        )
    )
    
    static var star = Self(
        icon: .symbol("star"),
        style: .init(
            iconColor: .yellow
        )
    )
    
    static var touchId = Self(
        icon: .symbol("touchid"),
        style: .init(
            iconColor: .pink
        )
    )
    
    static var wifi = Self(
        icon: .symbol("wifi"),
        style: .init(
            badgeColor: .blue
        )
    )
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
    item(.email, "email")
    item(.error, "error")
    item(.export, "export")
    item(.faceId, "faceId")
    item(.featureRequest, "featureRequest")
    item(.heart, "heart")
    item(.key, "key")
    item(.languageSettings, "languageSettings")
    item(.lightbulb, "lightbulb")
    item(.lock, "lock")
    item(.message, "messages")
    item(.notifications, "notifications")
    item(.palette, "palette")
    item(.person, "person")
    item(.phone, "phone")
    item(.premium, "premium")
    item(.privacy, "privacy")
    item(.prominentAlert, "prominentAlert")
    item(.prominentCheckmark, "prominentCheckmark")
    item(.prominentError, "prominentError")
    item(.safari, "safari")
    item(.settings, "settings")
    item(.share, "share")
    item(.shield, "shield")
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
    _ view: BadgeIcon,
    _ name: String
) -> some View {
    Label(
        title: { Text(name) },
        icon: { view }
    )
}
