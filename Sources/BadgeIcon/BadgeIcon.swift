//
//  BadgeIcon.swift
//  BadgeIcon
//
//  Created by Daniel Saidi on 2023-12-15.
//  Copyright © 2023-2024 Daniel Saidi. All rights reserved.
//

import SwiftUI

/**
 This view mimics the color badge icons that can be found in
 System Settings on iOS and macOS.
 */
public struct BadgeIcon<Icon: View>: View {
    
    /// Create a badge icon with an image as main icon.
    ///
    /// - Parameters:
    ///   - icon: The image to use as icon.
    ///   - style: The style to apply, by default ``BadgeIcon/standard``.
    public init(
        icon: Image,
        style: BadgeIconStyle = .standard
    ) where Icon == Image {
        self.icon = icon.resizable()
        self.style = style
    }
    
    /// Create a badge icon with a custom view as main icon.
    ///
    /// - Parameters:
    ///   - iconView: The view to use as icon.
    ///   - style: The style to apply, by default ``BadgeIcon/standard``.
    public init(
        iconView: Icon,
        style: BadgeIconStyle = .standard
    ) {
        self.icon = iconView
        self.style = style
    }

    public var icon: Icon
    public var style: BadgeIconStyle
    
    @Environment(\.colorScheme)
    private var colorScheme

    public var body: some View {
        GeometryReader { geo in
            ZStack(alignment: .center) {
                badge(style.badgeColor, gradient: style.badgeGradient)
                    .cornerRadius(cornerRadius(for: geo))
                    .overlay(
                        RoundedRectangle(cornerRadius: cornerRadius(for: geo))
                            .stroke(style.badgeStrokeColor, lineWidth: strokeWidth(for: geo))
                    )
                    .aspectRatio(1, contentMode: .fit)
                    .overlay(
                        icon.environment(\.colorScheme, style.iconColorScheme ?? colorScheme)
                            .aspectRatio(contentMode: .fit)
                            .symbolRenderingMode(style.iconRenderingMode)
                            .symbolVariant(style.iconFill ? .fill : .none)
                            .padding(iconPadding(for: geo))
                            .offset(iconOffset(for: geo))
                            .foreground(style.iconColor, gradient: style.iconGradient)
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
        style.badgeCornerRadius * geo.size.width
    }
    
    func iconOffset(for geo: GeometryProxy) -> CGPoint {
        let width = geo.size.width
        let offset = style.iconOffset
        return CGPoint(
            x: width * offset.x,
            y: width * offset.y
        )
    }
    
    func iconPadding(for geo: GeometryProxy) -> Double {
        style.iconPadding * geo.size.width
    }
    
    func strokeWidth(for geo: GeometryProxy) -> Double {
        max(style.badgeStrokeWidth * geo.size.width, 1)
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

private extension BadgeIconStyle {
    
    static var purplePreview: Self {
        .init(
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
    }
}

#Preview {
    VStack(spacing: 50) {
        BadgeIcon(icon: Image.symbol("checkmark"))
            .bold()
        
//        BadgeIcon(icon: Text("A"))
//            .bold()
        
        
        BadgeIcon(
            icon: .symbol("face.smiling"),
            style: .purplePreview
        )
        
        BadgeIcon(
            iconView: Circle(),
            style: .purplePreview
        )
        
        BadgeIcon(
            icon: .symbol("checkmark"),
            style: .init(
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
        )
        .bold()
        
        BadgeIcon.calendar
    }
    .padding(100)
}
