//
//  ContentView.swift
//  Demo
//
//  Created by Daniel Saidi on 2025-09-30.
//  Copyright © 2025 Daniel Saidi. All rights reserved.
//

import BadgeIcon
import SwiftUI

struct ContentView: View {

    @State var size = 50.0

    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                LazyVGrid(
                    columns: [.init(.adaptive(minimum: size, maximum: size + 20), spacing: 10)],
                    spacing: 10
                ) {
                    ForEach(BadgeIcon<Image>.predefined, id: \.id) { icon in
                        Button {
                            print(icon.name ?? "-")
                        } label: {
                            icon.label
                        }
                    }
                }
                .padding()
            }
            .labelStyle(.iconOnly)
            .navigationTitle("BadgeIcon")
            .safeAreaInset(edge: .bottom) {
                VStack(spacing: 0) {
                    Divider()
                    Slider(value: $size, in: 25...150)
                        .padding()
                }
                .background(.thinMaterial)
            }
        }
    }
}

#Preview {
    ContentView()
}
