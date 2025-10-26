//
//  BadgeIconStyle.swift
//  BadgeIcon
//
//  Created by Daniel Saidi on 2024-04-29.
//  Copyright © 2024-2025 Daniel Saidi. All rights reserved.
//

import SwiftUI

/// This style can be used to style a ``BadgeIcon``.
public struct BadgeIconStyle {
    
    /// Create a custom badge icon style.
    ///
    /// Size-based values like the icon offset and badge corner radius should be
    /// expressed as a `0.0-1.0` icon size ratio, to let them scale with the icon.
    ///
    /// For instance, applying a 0.5 badge corner radius will make the icon round.
    ///
    /// - Parameters:
    ///   - iconColor: The icon color, by default `semi-black` or `white`.
    ///   - iconColors: The icon colors, when using a palette rendering mode.
    ///   - iconColorScheme: The icon color scheme, by default `nil`.
    ///   - iconFill: Whether or not to use the filled icon variant, by default `true`.
    ///   - iconGradient: Whether or not to add a gradient to the icon color, by default `true`.
    ///   - iconOffset: The icon offset, by default `0` of the icon size.
    ///   - iconPadding: The icon padding, by default `0.15` of the icon size.
    ///   - iconRenderingMode: The icon symbol rendering mode, by default `.monochrome`.
    ///   - badgeColor: The badge color, by default `.white`.
    ///   - badgeColorDarkMode: The dark mode-specific badge color, if any.
    ///   - badgeCornerRadius: The badge corner radius, by default `0.3` of the icon size.
    ///   - badgeGradient: Whether or not to add a gradient to the icon color, by default `true`.
    ///   - badgeStrokeColor: The badge stroke color, if any.
    ///   - badgeStrokeWidth: The badge stroke width, by default `0.3` of the icon size.
    public init(
        iconColor: Color? = nil,
        iconColors: [Color] = [],
        iconColorScheme: ColorScheme? = nil,
        iconFill: Bool = true,
        iconGradient: Bool = true,
        iconOffset: CGPoint = .zero,
        iconPadding: Double? = nil,
        iconRenderingMode: SymbolRenderingMode = .monochrome,
        badgeColor: Color = .white,
        badgeColorDarkMode: Color? = nil,
        badgeCornerRadius: Double = 0.3,
        badgeGradient: Bool = true,
        badgeStrokeColor: Color? = nil,
        badgeStrokeWidth: Double = 0.001
    ) {
        let whiteBadge = badgeColor == .white
        let whiteBadgeStroke = Color.primary.opacity(0.1)
        let whiteBadgeIconColor = Color.primary.opacity(0.8)
        let fallbackBadgeColorDarkMode = whiteBadge ? Color.black : nil
        let fallbackIconColor = whiteBadge ? whiteBadgeIconColor : .white
        let fallbackStroke = whiteBadge ? whiteBadgeStroke : .clear

        let iconColor = iconColor ?? fallbackIconColor
        let colors = iconColors.isEmpty ? [iconColor] : iconColors

        self.iconColors = colors
        self.iconColorScheme = iconColorScheme
        self.iconFill = iconFill
        self.iconGradient = iconGradient
        self.iconOffset = iconOffset
        self.iconPadding = iconPadding ?? 0.15
        self.iconRenderingMode = iconRenderingMode
        self.badgeColor = badgeColor
        self.badgeColorDarkMode = badgeColorDarkMode ?? fallbackBadgeColorDarkMode
        self.badgeCornerRadius = badgeCornerRadius
        self.badgeGradient = badgeGradient
        self.badgeStrokeColor = badgeStrokeColor ?? fallbackStroke
        self.badgeStrokeWidth = badgeStrokeWidth
    }
    
    /// The icon color.
    public var iconColors: [Color]

    /// The icon color scheme, if any.
    public var iconColorScheme: ColorScheme?
    
    /// Whether to add a gradient to the icon color.
    public var iconGradient: Bool
    
    /// Whether to use the filled icon variant.
    public var iconFill: Bool
    
    /// The icon offset.
    public var iconOffset: CGPoint
    
    /// The icon padding.
    public var iconPadding: Double
    
    /// The icon symbol rendering mode.
    public var iconRenderingMode: SymbolRenderingMode
    
    /// The badge color.
    public var badgeColor: Color
    
    /// The dark mode badge color, if any.
    public var badgeColorDarkMode: Color?

    /// The badge corner radius.
    public var badgeCornerRadius: Double
    
    /// Whether or not to add a gradient to the icon color.
    public var badgeGradient: Bool
    
    /// The badge stroke color, if any.
    public var badgeStrokeColor: Color
    
    /// The badge stroke width.
    public var badgeStrokeWidth: Double
}

public extension BadgeIconStyle {
    
    /// The standard badge icon style.
    static var standard: Self { .init() }
}
