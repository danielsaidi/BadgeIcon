//
//  BadgeIcon.swift
//  BadgeIcon
//
//  Created by Daniel Saidi on 2023-12-15.
//  Copyright © 2023-2026 Daniel Saidi. All rights reserved.
//

import SwiftUI

/// This view mimics the color badge icons that can be found in e.g. Settings.
///
/// Note that a custom ``BadgeIconStyle`` can be provided in the initializer,
/// and not as an environment value. This is because each icon is unique, which
/// makes the environment value approach unsuitable for this kind of styling.
public struct BadgeIcon<Icon: View>: View {

    /// Create a badge icon with an image icon.
    ///
    /// - Parameters:
    ///   - id: The unique ID.
    ///   - name: The icon name, by default a capitalized version of the ID.
    ///   - icon: The image to use as icon.
    ///   - darkModeIcon: The image to use as dark mode icon, if any.
    ///   - style: The style to apply, by default ``BadgeIconStyle/standard``.
    public init(
        name: String,
        icon: Image,
        darkModeIcon: Image? = nil,
        style: BadgeIconStyle = .standard
    ) where Icon == Image {
        self.init(
            name: name,
            iconView: icon.resizable(),
            darkModeIconView: darkModeIcon?.resizable(),
            style: style
        )
    }

    /// Create a badge icon with a custom icon view.
    ///
    /// - Parameters:
    ///   - id: The unique ID.
    ///   - name: The icon name, by default a capitalized version of the ID.
    ///   - iconView: The view to use as icon, if any.
    ///   - darkModeIconView: The view to use as icon in dark mode, if any.
    ///   - style: The style to apply, by default ``BadgeIconStyle/standard``.
    public init(
        name: String,
        iconView: Icon,
        darkModeIconView: Icon? = nil,
        style: BadgeIconStyle = .standard
    ) {
        self.name = name
        self.lightModeIcon = iconView
        self.darkModeIcon = darkModeIconView
        self.style = style
    }

    public var id: String { name }
    public let name: String

    private let lightModeIcon: Icon
    private let darkModeIcon: Icon?
    private let style: BadgeIconStyle

    @Environment(\.colorScheme)
    private var colorScheme

    public var body: some View {
        GeometryReader { geo in
            ZStack(alignment: .center) {
                badge(badgeColor, gradient: style.badgeGradient)
                    .cornerRadius(cornerRadius(for: geo))
                    .overlay(
                        RoundedRectangle(cornerRadius: cornerRadius(for: geo))
                            .stroke(style.badgeStrokeColor, lineWidth: strokeWidth(for: geo))
                    )
                    .aspectRatio(1, contentMode: .fit)
                    .overlay(
                      icon
                          .environment(\.colorScheme, style.iconColorScheme ?? colorScheme)
                          .aspectRatio(contentMode: .fit)
                          .symbolRenderingMode(style.iconRenderingMode)
                          .symbolVariant(style.iconFill ? .fill : .none)
                          .padding(iconPadding(for: geo))
                          .offset(iconOffset(for: geo))
                          .foreground(style.iconColors, gradient: style.iconGradient)
                    )
            }
        }
        .aspectRatio(1, contentMode: .fit)
    }
}

public extension BadgeIcon {

    /// Apply a scale effect to bump up the size of the icon
    /// when it's used as a list label icon.
    func scaledForListLabel(
        scale: Double = 1.2
    ) -> some View {
        self.scaleEffect(scale)
    }

    @available(*, deprecated, renamed: "scaledForListLabel")
    func scaledForList(
        scale: Double = 1.2
    ) -> some View {
        self.scaledForListLabel(scale: scale)
    }
}

private extension BadgeIcon {

    var badgeColor: Color {
        guard colorScheme == .dark else { return style.badgeColor }
        return style.badgeColorDarkMode ?? style.badgeColor
    }

    var icon: Icon {
        guard colorScheme == .dark else { return lightModeIcon }
        return darkModeIcon ?? lightModeIcon
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
        _ colors: [Color],
        gradient: Bool
    ) -> some View {
        if colors.count == 2 {
            if gradient {
                self.foregroundStyle(
                    colors[0].gradient,
                    colors[1].gradient
                )
            } else {
                self.foregroundStyle(colors[0], colors[1])
            }
        } else if colors.count == 1 {
            if gradient {
                self.foregroundStyle(colors[0].gradient)
            } else {
                self.foregroundStyle(colors[0])
            }
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

private func preview<T>(
    for badgeIcon: BadgeIcon<T>
) -> some View {
    VStack {
        badgeIcon
        Text(badgeIcon.name)
    }
}

#Preview {
    VStack(spacing: 50) {
        List {
            Label {
                Text("Test")
            } icon: {
                BadgeIcon.calendar
                    .scaledForList()
            }
            Label {
                Text("Test")
            } icon: {
                Image(systemName: "calendar")
            }
        }
        .frame(height: 150)

        BadgeIcon.emoji

        BadgeIcon(
            name: "circle",
            iconView: Circle(),
            style: .purplePreview
        )
        
        BadgeIcon(
            name: "clipboard",
            icon: .symbol("clipboard"),
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
    .frame(maxWidth: .infinity)
}
