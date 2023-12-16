//
//  BadgeIcon.swift
//  BadgeIcon
//
//  Created by Daniel Saidi on 2023-12-15.
//  Copyright © 2023 Daniel Saidi. All rights reserved.
//

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
       - iconColorScheme: The icon color scheme, by default `nil`.
       - iconFill: The icon fill mode, by default `true`.
       - iconGradient: Whether or not to add a gradient to the icon color, by default `true`.
       - iconOffset: The icon offset, by default `.zero`.
       - iconPadding: The icon padding, by default calculated at runtime.
       - iconRenderingMode: The icon symbol rendering mode, by default `.monochrome`.
       - badgeColor: The badge color, by default `.white`.
       - badgeCornerRadius: The badge corner radius, by default calculated at runtime.
       - badgeGradient: Whether or not to add a gradient to the icon color, by default `true`.
       - badgeStrokeColor: The badge stroke color, if any.
       - badgeStrokeWidth: The badge stroke width, by default `1`.
     */
    public init(
        icon: Image,
        iconColor: Color? = nil,
        iconColorScheme: ColorScheme? = nil,
        iconFill: Bool = true,
        iconGradient: Bool = true,
        iconOffset: CGPoint = .zero,
        iconPadding: Double? = nil,
        iconRenderingMode: SymbolRenderingMode = .monochrome,
        badgeColor: Color = .white,
        badgeCornerRadius: Double? = nil,
        badgeGradient: Bool = true,
        badgeStrokeColor: Color? = nil,
        badgeStrokeWidth: Double = 1
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
        self.iconColorScheme = iconColorScheme
        self.iconFill = iconFill
        self.iconGradient = iconGradient
        self.iconOffset = iconOffset
        self.iconPadding = iconPadding
        self.iconRenderingMode = iconRenderingMode
        self.badgeColor = badgeColor
        self.badgeCornerRadius = badgeCornerRadius
        self.badgeGradient = badgeGradient
        self.badgeStrokeColor = badgeStrokeColor ?? fallbackStroke
        self.badgeStrokeWidth = badgeStrokeWidth
    }

    public var icon: Image
    public var iconColor: Color?
    public var iconColorScheme: ColorScheme?
    public var iconGradient: Bool
    public var iconFill: Bool
    public var iconOffset: CGPoint
    public var iconPadding: Double?
    public var iconRenderingMode: SymbolRenderingMode
    public var badgeColor: Color
    public var badgeCornerRadius: Double?
    public var badgeGradient: Bool
    public var badgeStrokeColor: Color
    public var badgeStrokeWidth: Double
    
    @Environment(\.colorScheme)
    private var colorScheme

    public var body: some View {
        GeometryReader { geo in
            ZStack(alignment: .center) {
                badge(badgeColor, gradient: badgeGradient)
                    .cornerRadius(cornerRadius(for: geo))
                    .overlay(
                        RoundedRectangle(cornerRadius: cornerRadius(for: geo))
                            .stroke(badgeStrokeColor, lineWidth: badgeStrokeWidth)
                    )
                    .aspectRatio(1, contentMode: .fit)
                    .overlay(
                        icon.resizable()
                            .environment(\.colorScheme, iconColorScheme ?? colorScheme)
                            .aspectRatio(contentMode: .fit)
                            .symbolRenderingMode(iconRenderingMode)
                            .symbolVariant(iconFill ? .fill : .none)
                            .padding(iconPadding(for: geo))
                            .offset(x: iconOffset.x, y: iconOffset.y)
                            .foreground(iconColor, gradient: iconGradient)
                    )
            }
        }
        .aspectRatio(1, contentMode: .fit)
    }
}

extension BadgeIcon {
    
    func cornerRadius(for geo: GeometryProxy) -> Double {
        badgeCornerRadius ?? 0.3 * geo.size.width
    }
    
    func iconPadding(for geo: GeometryProxy) -> Double {
        badgeCornerRadius ?? 0.17 * geo.size.width
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
    func foreground(
        _ color: Color?,
        gradient: Bool
    ) -> some View {
        if let color, gradient {
            self.foregroundStyle(color.gradient)
        } else if let color {
            self.foregroundStyle(color)
        } else {
            self
        }
    }
}

#Preview {
    VStack(spacing: 50) {
        BadgeIcon(
            icon: .symbol("face.smiling"),
            iconColor: .yellow,
            iconColorScheme: nil,
            iconFill: true,
            iconGradient: false,
            iconOffset: .init(x: -45, y: -50),
            iconPadding: 2,
            iconRenderingMode: .monochrome,
            badgeColor: .indigo,
            badgeCornerRadius: 20,
            badgeGradient: true,
            badgeStrokeColor: .teal,
            badgeStrokeWidth: 10
        )
        .bold()
        .shadow(radius: 10)
        BadgeIcon(
            icon: .symbol("checkmark"),
            iconColor: .green,
            iconColorScheme: nil,
            iconFill: true,
            iconGradient: true,
            iconOffset: .init(x: 45, y: -50),
            iconPadding: 2,
            iconRenderingMode: .monochrome,
            badgeColor: .red,
            badgeCornerRadius: 20,
            badgeGradient: true,
            badgeStrokeColor: .blue,
            badgeStrokeWidth: 20
        )
        .bold()
        .shadow(radius: 10)
    }
    .padding(100)
}
