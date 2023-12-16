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
                            .stroke(badgeStrokeColor, lineWidth: 1)
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
                            .foregroundColor(iconColor, gradientIf: iconGradient)
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
