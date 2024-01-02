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
     
     The size-based parameters, like `iconOffset`, should be
     expressed as a `0.0-1.0` percentage of the icon size to
     let them scale well with the icon size. For instance, a
     `0.50` `badgeCornerRadius` will make the badge circular.
     
     - Parameters:
       - icon: The image to use.
       - iconColor: The icon color, by default `semi-black` or `white`.
       - iconColorScheme: The icon color scheme, by default `nil`.
       - iconFill: The icon fill mode, by default `true`.
       - iconGradient: Whether or not to add a gradient to the icon color, by default `true`.
       - iconOffset: The icon offset, by default `0` of the icon size.
       - iconPadding: The icon padding, by default `0.15` of the icon size.
       - iconRenderingMode: The icon symbol rendering mode, by default `.monochrome`.
       - badgeColor: The badge color, by default `.white`.
       - badgeCornerRadius: The badge corner radius, by default `0.3` of the icon size.
       - badgeGradient: Whether or not to add a gradient to the icon color, by default `true`.
       - badgeStrokeColor: The badge stroke color, if any.
       - badgeStrokeWidth: The badge stroke width, by default `0.3` of the icon size.
     */
    public init(
        icon: Image,
        iconColor: Color? = nil,
        iconColorScheme: ColorScheme? = nil,
        iconFill: Bool = true,
        iconGradient: Bool = true,
        iconOffset: CGPoint = .zero,
        iconPadding: Double = 0.15,
        iconRenderingMode: SymbolRenderingMode = .monochrome,
        badgeColor: Color = .white,
        badgeCornerRadius: Double = 0.3,
        badgeGradient: Bool = true,
        badgeStrokeColor: Color? = nil,
        badgeStrokeWidth: Double = 0.001
    ) {
        let whiteBadge = badgeColor == .white
        let whiteBadgeStroke = Color.hex(0xe7e7e7)
        let whiteBadgeIconColor = Color.black.opacity(0.8)
        let fallbackIconColor = whiteBadge ? whiteBadgeIconColor : .white
        let fallbackStroke = whiteBadge ? whiteBadgeStroke : .clear
        
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
    public var iconPadding: Double
    public var iconRenderingMode: SymbolRenderingMode
    public var badgeColor: Color
    public var badgeCornerRadius: Double
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
                            .stroke(badgeStrokeColor, lineWidth: strokeWidth(for: geo))
                    )
                    .aspectRatio(1, contentMode: .fit)
                    .overlay(
                        icon.resizable()
                            .environment(\.colorScheme, iconColorScheme ?? colorScheme)
                            .aspectRatio(contentMode: .fit)
                            .symbolRenderingMode(iconRenderingMode)
                            .symbolVariant(iconFill ? .fill : .none)
                            .padding(iconPadding(for: geo))
                            .offset(iconOffset(for: geo))
                            .foreground(iconColor, gradient: iconGradient)
                    )
            }
        }
        .aspectRatio(1, contentMode: .fit)
    }
}

private extension View {
    
    func offset(_ point: CGPoint) -> some View {
        self.offset(x: point.x, y: point.y)
    }
}

extension BadgeIcon {
    
    func cornerRadius(for geo: GeometryProxy) -> Double {
        badgeCornerRadius * geo.size.width
    }
    
    func iconOffset(for geo: GeometryProxy) -> CGPoint {
        let width = geo.size.width
        let offset = iconOffset
        return CGPoint(
            x: width * offset.x,
            y: width * offset.y
        )
    }
    
    func iconPadding(for geo: GeometryProxy) -> Double {
        iconPadding * geo.size.width
    }
    
    func strokeWidth(for geo: GeometryProxy) -> Double {
        max(badgeStrokeWidth * geo.size.width, 1)
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
            iconOffset: .init(x: -0.4, y: -0.4),
            iconPadding: 0.2,
            iconRenderingMode: .monochrome,
            badgeColor: .indigo,
            badgeCornerRadius: 0.4,
            badgeGradient: true,
            badgeStrokeColor: .teal,
            badgeStrokeWidth: 0.05
        )
        
        BadgeIcon(
            icon: .symbol("checkmark"),
            iconColor: .green,
            iconColorScheme: nil,
            iconFill: true,
            iconGradient: true,
            iconOffset: .init(x: 0.25, y: -0.25),
            iconPadding: 0.1,
            iconRenderingMode: .monochrome,
            badgeColor: .red,
            badgeCornerRadius: 0.3,
            badgeGradient: true,
            badgeStrokeColor: .blue,
            badgeStrokeWidth: 0.05
        )
        .bold()
        
        BadgeIcon.calendar
    }
    .padding(100)
}
