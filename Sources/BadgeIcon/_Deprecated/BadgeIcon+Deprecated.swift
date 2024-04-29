import SwiftUI

public extension BadgeIcon {
    
    @available(*, deprecated, renamed: "init(icon:style:)")
    init(
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
        self.icon = icon
        self.style = .init(
            iconColor: iconColor,
            iconColorScheme: iconColorScheme,
            iconFill: iconFill,
            iconGradient: iconGradient,
            iconOffset: iconOffset,
            iconPadding: iconPadding,
            iconRenderingMode: iconRenderingMode,
            badgeColor: badgeColor,
            badgeCornerRadius: badgeCornerRadius,
            badgeGradient: badgeGradient,
            badgeStrokeColor: badgeStrokeColor,
            badgeStrokeWidth: badgeStrokeWidth
        )
    }
}
