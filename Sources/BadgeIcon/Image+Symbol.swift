//
//  Image+Symbol.swift
//  BadgeIcon
//
//  Created by Daniel Saidi on 2023-05-29.
//  Copyright © 2023-2024 Daniel Saidi. All rights reserved.
//

import SwiftUI

extension Image {

    static func symbol(_ name: String) -> Image {
        Image(systemName: name)
    }
}
