//
//  ContentView.swift
//  Demo
//
//  Created by Daniel Saidi on 2025-09-30.
//  Copyright © 2025-2026 Daniel Saidi. All rights reserved.
//

import BadgeIcon
import SwiftUI

struct ContentView: View {

    enum ContentType: String {
        case grid
        case list
    }

    @AppStorage("com.danielsaidi.badgeicon.demo.contentType")
    var contentType = ContentType.grid

    @State var iconSize = 50.0

    var body: some View {
        bodyContent
            .navigationTitle("BadgeIcon")
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    contentTypePicker
                }
                .sharedBackgroundVisibility(.hidden)
            }
    }
}

private extension ContentView {

    var badges: [BadgeIcon<Image>] {
        BadgeIcon<Image>.predefined
    }
}

private extension ContentView {

    @ViewBuilder
    var bodyContent: some View {
        switch contentType {
        case .grid: grid
        case .list: list
        }
    }

    var contentTypePicker: some View {
        Picker("Test", selection: $contentType) {
            Label("Grid", systemImage: "square.grid.2x2")
                .tag(ContentType.grid)
            Label("List", systemImage: "list.bullet")
                .tag(ContentType.list)
        }
    }

    var grid: some View {
        ScrollView(.vertical) {
            LazyVGrid(
                columns: [.init(.adaptive(minimum: iconSize, maximum: iconSize + 20), spacing: 10)],
                spacing: 10
            ) {
                ForEach(badges, id: \.id) { icon in
                    Button {
                        print(icon.name)
                    } label: {
                        icon.label
                    }
                }
            }
            .padding()
        }
        .labelStyle(.iconOnly)
        .safeAreaInset(edge: .bottom) {
            Slider(value: $iconSize.animation(), in: 50...150)
                .padding()
                .glassEffect(.regular)
                .shadow(radius: 5)
                .padding()
        }
    }

    var list: some View {
        List {
//            Label {
//                Text("Hej")
//            } icon: {
//                Image(systemName: "airplane")
//                    .foregroundStyle(.white)
//                    .background(.orange)
//            }

            ForEach(badges, id: \.id) { icon in
                Button {
                    print(icon.name)
                } label: {
                    icon.listLabel
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        ContentView()
    }
}
