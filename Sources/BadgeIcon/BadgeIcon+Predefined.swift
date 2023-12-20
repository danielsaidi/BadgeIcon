//
//  BadgeIcon+Predefined.swift
//  BadgeIcon
//
//  Created by Daniel Saidi on 2023-12-15.
//  Copyright © 2023 Daniel Saidi. All rights reserved.
//

import SwiftUI

public extension BadgeIcon {
    
    static var accessibility = Self(
        icon: .symbol("accessibility"),
        iconFill: false,
        badgeColor: .blue
    )
    
    static var airplaneMode = Self(
        icon: .symbol("airplane"),
        badgeColor: .orange
    )
    
    static var alert = Self(
        icon: .symbol("exclamationmark.triangle"),
        iconColor: .orange
    )
    
    static var appStore = Self(
        icon: Image(systemName: "apple.logo"),
        iconColor: .white.opacity(0.6),
        badgeColor: .black.opacity(0.9)
    )
    
    static var battery = Self(
        icon: Image(systemName: "battery.100percent"),
        badgeColor: .green
    )
    
    static var bug = Self(
        icon: .symbol("ladybug"),
        iconRenderingMode: .multicolor
    )
    
    static var checkmark = Self(
        icon: .symbol("checkmark.circle"),
        iconColor: .green
    )
    
    static var email = Self(
        icon: .symbol("envelope"),
        iconColor: .white,
        badgeColor: .blue
    )
    
    static var error = Self(
        icon: .symbol("exclamationmark.triangle"),
        iconColor: .red
    )
    
    static var export = Self(
        icon: .symbol("square.and.arrow.up.on.square"),
        iconFill: false,
        iconOffset: .init(x: 0, y: -1)
    )
    
    static var featureRequest = Self(
        icon: .symbol("gift"),
        iconColor: .pink
    )
    
    static var heart = Self(
        icon: .symbol("heart"),
        iconColor: .red
    )
    
    static var languageSettings = Self(
        icon: .symbol("globe"),
        iconColor: .cyan
    )
    
    static var lightbulb = Self(
        icon: .symbol("lightbulb"),
        iconColor: .yellow,
        iconColorScheme: .light,
        iconRenderingMode: .multicolor
    )
    
    static var message = Self(
        icon: .symbol("message"),
        badgeColor: .green
    )
    
    static var palette = Self(
        icon: .symbol("paintpalette"),
        iconColor: nil,
        iconRenderingMode: .multicolor
    )
    
    static var person = Self(
        icon: .symbol("person")
    )
    
    static var phone = Self(
        icon: .symbol("phone"),
        badgeColor: .green
    )
    
    static var privacy = Self(
        icon: .symbol("hand.raised.fill"),
        badgeColor: .blue
    )
    
    static func prominent(
        icon: Image,
        iconColor: Color = .white,
        iconPadding: Double = 6,
        badgeColor: Color
    ) -> Self {
        .init(
            icon: icon,
            iconColor: iconColor,
            iconPadding: iconPadding,
            badgeColor: badgeColor
        )
    }
    
    static var prominentAlert = prominent(
        icon: .symbol("exclamationmark.triangle"),
        badgeColor: .orange
    )
    
    static var prominentCheckmark = prominent(
        icon: .symbol("checkmark.circle"),
        badgeColor: .green
    )
    
    static var prominentError = prominent(
        icon: .symbol("exclamationmark.triangle"),
        badgeColor: .red
    )
    
    static var safari = Self(
        icon: .symbol("safari"),
        iconColor: .blue
    )
    
    static var settings = Self(
        icon: .symbol("gearshape"),
        badgeColor: .gray
    )
    
    static var share = Self(
        icon: .symbol("square.and.arrow.up"),
        iconFill: false,
        iconOffset: .init(x: 0, y: -1)
    )
    
    static var shield = Self(
        icon: .symbol("checkmark.shield.fill"),
        iconColor: .green
    )
    
    static var star = Self(
        icon: .symbol("star"),
        iconColor: .yellow
    )
    
    static var wifi = Self(
        icon: .symbol("wifi"),
        badgeColor: .blue
    )
}

@ViewBuilder
private func previewItems(
    selection: Binding<String?> = .constant(nil)
) -> some View {
    item(.accessibility, "accessibility", selection)
    item(.airplaneMode, "airplaneMode", selection)
    item(.alert, "alert", selection)
    item(.appStore, "appStore", selection)
    item(.battery, "battery", selection)
    item(.bug, "bug", selection)
    item(.checkmark, "checkmark", selection)
    item(.email, "email", selection)
    item(.error, "error", selection)
    item(.export, "export", selection)
    item(.featureRequest, "featureRequest", selection)
    item(.heart, "heart", selection)
    item(.languageSettings, "languageSettings", selection)
    item(.lightbulb, "lightbulb", selection)
    item(.message, "messages", selection)
    item(.palette, "multicolorPalette", selection)
    item(.person, "person", selection)
    item(.phone, "phone", selection)
    item(.privacy, "privacy", selection)
    item(.prominentAlert, "prominentAlert", selection)
    item(.prominentCheckmark, "prominentCheckmark", selection)
    item(.prominentError, "prominentError", selection)
    item(.safari, "safari", selection)
    item(.settings, "settings", selection)
    item(.share, "share", selection)
    item(.shield, "shield", selection)
    item(.star, "star", selection)
    item(.wifi, "wifi", selection)
}

#Preview {
    
    struct GridPreview: View {
        
        @State
        private var selection: String?
        
        var body: some View {
            VStack {
                if let selection {
                    Text("Selection: " + selection)
                        .padding()
                        .background(Color.yellow)
                        .cornerRadius(10)
                }
                ScrollView(.vertical) {
                    LazyVGrid(columns: [.init(.adaptive(minimum: 40, maximum: 50))]) {
                        previewItems(selection: $selection)
                    }
                    .padding()
                }
            }
            .labelStyle(.iconOnly)
            .previewDisplayName("List")
        }
    }
    
    return VStack(spacing: 0) {
        GridPreview()
            .frame(height: 220)
            .padding(.bottom, 40)
        List {
            previewItems()
        }
    }
}

private func item(
    _ view: BadgeIcon,
    _ name: String,
    _ selection: Binding<String?>
) -> some View {
    Label(
        title: { Text(name) },
        icon: { view }
    )
    .onTapGesture {
        selection.wrappedValue = name
    }
}
