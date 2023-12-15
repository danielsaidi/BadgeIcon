//
//  BadgeIcon.swift
//  BadgeIcon
//
//  Created by Daniel Saidi on 2023-12-15.
//  Copyright © 2023 Daniel Saidi. All rights reserved.
//

#if os(iOS) || os(macOS)
import SwiftUI

/**
 This view mimics the color badge icons that can be found in
 System Settings on iOS and macOS.
 */
public struct BadgeIcon: View {
    
    /**
     Create a badge icon.
     
     - Parameters:
       - icon: The image to use.
       - iconColor: The icon color, by default `semi-black` or `white`.
       - iconFill: The icon fill mode, by default `true`.
       - iconGradient: Whether or not to add a gradient to the icon color, by default `true`.
       - iconOffset: The icon offset, by default `.zero`.
       - iconPadding: The icon padding, by default `5`.
       - badgeColor: The badge color, by default `.white`.
       - badgeGradient: Whether or not to add a gradient to the icon color, by default `true`.
       - badgeStrokeColor: The badge stroke color, if any.
       - size: The badge size, by default `32`.
     */
    public init(
        icon: Image,
        iconColor: Color? = nil,
        iconFill: Bool = true,
        iconGradient: Bool = true,
        iconOffset: CGPoint = .zero,
        iconPadding: Double = 5,
        badgeColor: Color = .white,
        badgeGradient: Bool = true,
        badgeStrokeColor: Color? = nil,
        size: Double = 32
    ) {
        let whiteBadge = badgeColor == .white
        let whiteBadgeStroke = Color.hex(0xe7e7e7)
        let whiteBadgeIconColor = Color.black.opacity(0.8)
        let defaultIconColor = Color.white
        let defaultStrokeColor = Color.clear
        let fallbackIconColor = whiteBadge ? whiteBadgeIconColor : defaultIconColor
        let fallbackStroke = whiteBadge ? whiteBadgeStroke : defaultStrokeColor
        
        self.icon = icon
        self.iconColor = iconColor ?? fallbackIconColor
        self.iconFill = iconFill
        self.iconGradient = iconGradient
        self.iconOffset = iconOffset
        self.iconPadding = iconPadding
        self.badgeColor = badgeColor
        self.badgeGradient = badgeGradient
        self.badgeStrokeColor = badgeStrokeColor ?? fallbackStroke
        self.size = size
    }

    public var icon: Image
    public var iconColor: Color?
    public var iconGradient: Bool
    public var iconFill: Bool
    public var iconOffset: CGPoint
    public var iconPadding: Double
    public var badgeColor: Color
    public var badgeGradient: Bool
    public var badgeStrokeColor: Color
    public var size: Double

    public var body: some View {
        ZStack {
            badge(badgeColor, gradient: badgeGradient)
                .withStrokeColor(badgeStrokeColor)
                .aspectRatio(1, contentMode: .fit)
                
            icon.resizable()
                .aspectRatio(contentMode: .fit)
                .symbolVariant(iconFill ? .fill : .none)
                .padding(iconPadding)
                .offset(x: iconOffset.x, y: iconOffset.y)
                .foregroundColor(iconColor, gradientIf: iconGradient)
        }.frame(width: size, height: size)
    }
}

public extension BadgeIcon {
    
    static var alert: Self {
        .init(
            icon: .symbol("exclamationmark.triangle"),
            iconColor: .orange
        )
    }
    
    static var appStore: Self {
        .init(
            icon: Image(systemName: "apple.logo"),
            iconColor: .white.opacity(0.6),
            badgeColor: .black.opacity(0.9)
        )
    }
    
    static var bug: some View {
        BadgeIcon(
            icon: .symbol("ladybug")
        )
        .symbolRenderingMode(.multicolor)
    }
    
    static var checkmark: some View {
        BadgeIcon(
            icon: .symbol("checkmark.circle"),
            iconColor: .green
        )
        .fontWeight(.semibold)
    }
    
    static var email: Self {
        .init(
            icon: .symbol("envelope"),
            iconColor: .white,
            badgeColor: .blue
        )
    }
    
    static var error: Self {
        .init(
            icon: .symbol("exclamationmark.triangle"),
            iconColor: .red
        )
    }
    
    static var featureRequest: some View {
        BadgeIcon(
            icon: .symbol("gift"),
            iconColor: .pink
        )
    }
    
    static var languageSettings: Self {
        .init(
            icon: .symbol("globe"),
            iconColor: .cyan
        )
    }
    
    static var lightbulb: some View {
        BadgeIcon(
            icon: .symbol("lightbulb"),
            iconColor: .yellow
        )
    }
    
    static var multicolorPalette: some View {
        BadgeIcon(
            icon: .symbol("paintpalette"),
            iconColor: nil
        )
        .symbolRenderingMode(.multicolor)
    }
    
    static var person: Self {
        .init(
            icon: .symbol("person")
        )
    }
    
    static var privacy: some View {
        BadgeIcon(
            icon: .symbol("checkmark.shield.fill"),
            iconColor: .green
        )
        .symbolRenderingMode(.multicolor)
    }
    
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
    
    static var prominentAlert: Self {
        .prominent(
            icon: .symbol("exclamationmark.triangle"),
            badgeColor: .orange
        )
    }
    
    static var prominentCheckmark: Self {
        .prominent(
            icon: .symbol("checkmark.circle"),
            badgeColor: .green
        )
    }
    
    static var prominentError: Self {
        .prominent(
            icon: .symbol("exclamationmark.triangle"),
            badgeColor: .red
        )
    }
    
    static var redHeart: Self {
        .init(
            icon: .symbol("heart"),
            iconColor: .red
        )
    }
    
    static var safari: some View {
        BadgeIcon(
            icon: .symbol("safari"),
            iconColor: .blue
        )
        .symbolRenderingMode(.multicolor)
    }
    
    static var share: Self {
        .init(
            icon: .symbol("square.and.arrow.up"),
            iconFill: false,
            iconOffset: .init(x: 0, y: -1)
        )
    }
    
    static var yellowStar: Self {
        .init(
            icon: .symbol("star"),
            iconColor: .yellow
        )
    }
}

private extension Color {
    
    func asGradientBackground() -> some View {
        Color.clear.overlay(self.gradient)
    }
}

private extension View {
    
    @ViewBuilder
    func badge(
        _ color: Color,
        gradient condition: Bool
    ) -> some View {
        if condition {
            color.overlay(color.gradient)
        } else {
            color
        }
    }
    
    @ViewBuilder
    func foregroundColor(
        _ color: Color?,
        gradientIf condition: Bool
    ) -> some View {
        if let color, condition {
            self.foregroundStyle(color.gradient)
        } else if let color {
            self.foregroundStyle(color)
        } else {
            self
        }
    }
    
    @ViewBuilder
    func withStrokeColor(
        _ color: Color
    ) -> some View {
        self.cornerRadius(7)
            .padding(0.6)
            .background(color.cornerRadius(7.6))
    }
}

private func item<ViewType: View>(
    _ view: ViewType,
    _ name: String
) -> some View {
    Label(
        title: { Text(name) },
        icon: { view }
    )
}

#Preview {
    
    List {
        item(BadgeIcon.alert, "alert")
        item(BadgeIcon.appStore, "appStore")
        item(BadgeIcon.bug, "bug")
        item(BadgeIcon.checkmark, "checkmark")
        item(BadgeIcon.email, "email")
        item(BadgeIcon.error, "error")
        item(BadgeIcon.featureRequest, "featureRequest")
        item(BadgeIcon.languageSettings, "languageSettings")
        item(BadgeIcon.lightbulb, "lightbulb")
        item(BadgeIcon.multicolorPalette, "multicolorPalette")
        item(BadgeIcon.person, "person")
        item(BadgeIcon.privacy, "privacy")
        item(BadgeIcon.prominentAlert, "prominentAlert")
        item(BadgeIcon.prominentCheckmark, "prominentCheckmark")
        item(BadgeIcon.prominentError, "prominentError")
        item(BadgeIcon.redHeart, "redHeart")
        item(BadgeIcon.safari, "safari")
        item(BadgeIcon.share, "share")
        item(BadgeIcon.yellowStar, "yellowStar")
    }
    .previewLayout(.sizeThatFits)
}
#endif
