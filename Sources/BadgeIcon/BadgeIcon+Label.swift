//
//  BadgeIcon+Predefined.swift
//  BadgeIcon
//
//  Created by Daniel Saidi on 2023-12-15.
//  Copyright © 2023-2026 Daniel Saidi. All rights reserved.
//

import SwiftUI

public extension BadgeIcon {

    /// A display label for the icon.
    var label: some View {
        Label(
            title: { Text(name) },
            icon: { self }
        )
    }

    /// A display label for the icon, for use in lists.
    var listLabel: some View {
        Label(
            title: { Text(name) },
            icon: { self.scaledForListLabel() }
        )
    }
}
