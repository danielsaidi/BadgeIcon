//
//  BadgeIconStyle.swift
//  BadgeIcon
//
//  Created by Daniel Saidi on 2024-04-29.
//  Copyright © 2024 Daniel Saidi. All rights reserved.
//

import SwiftUI

public struct BadgeIconStyle {
    
    /// Create a badge icon style.
    ///
    /// The size-based parameters, like `iconOffset`, should
    /// be expressed as a `0.0-1.0` ratio of the icon's size,
    /// to let them scale with the icon. For instance, a 0.5
    /// `badgeCornerRadius` will make the badge circular.
    ///
    /// - Parameters:
    ///   - iconColor: The icon color, by default `semi-black` or `white`.
    ///   - iconColorScheme: The icon color scheme, by default `nil`.
    ///   - iconFill: The icon fill mode, by default `true`.
    ///   - iconGradient: Whether or not to add a gradient to the icon color, by default `true`.
    ///   - iconOffset: The icon offset, by default `0` of the icon size.
    ///   - iconPadding: The icon padding, by default `0.15` of the icon size.
    ///   - iconRenderingMode: The icon symbol rendering mode, by default `.monochrome`.
    ///   - badgeColor: The badge color, by default `.white`.
    ///   - badgeCornerRadius: The badge corner radius, by default `0.3` of the icon size.
    ///   - badgeGradient: Whether or not to add a gradient to the icon color, by default `true`.
    ///   - badgeStrokeColor: The badge stroke color, if any.
    ///   - badgeStrokeWidth: The badge stroke width, by default `0.3` of the icon size.
    public init(
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
    
    /// The icon color.
    public var iconColor: Color?
    
    /// The icon color scheme, if any.
    public var iconColorScheme: ColorScheme?
    
    /// The icon fill mode.
    public var iconGradient: Bool
    
    /// Whether to add a gradient to the icon color.
    public var iconFill: Bool
    
    /// The icon offset.
    public var iconOffset: CGPoint
    
    /// The icon padding.
    public var iconPadding: Double
    
    /// The icon symbol rendering mode.
    public var iconRenderingMode: SymbolRenderingMode
    
    /// The badge color.
    public var badgeColor: Color
    
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
