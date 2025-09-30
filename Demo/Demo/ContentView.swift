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

    @State var isSheetPresented = true {
        didSet {
            if !isSheetPresented {
                isSheetPresented = true
            }
        }
    }

    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                LazyVGrid(
                    columns: [.init(
                        .adaptive(minimum: size, maximum: size + 20),
                        spacing: 10
                    )],
                    spacing: 10
                ) {
                    ForEach(BadgeIcon<Image>.predefined, id: \.id) { icon in
                        Button {
                            print(icon.name)
                        } label: {
                            icon.label
                        }
                    }
                }
                .padding()
                .padding(.bottom, 70)
            }
            .labelStyle(.iconOnly)
            .navigationTitle("BadgeIcon")
        }
        .sheet(isPresented: .constant(true)) {
            Color.gray
                .opacity(0.1)
                .ignoresSafeArea()
                .overlay(alignment: .center) {
                    Slider(value: $size.animation(), in: 50...150)
                        .padding(.horizontal)
                }
                .interactiveDismissDisabled()
                .presentationDetents([.height(80)])
                .presentationBackgroundInteraction(.enabled)
        }

    }
}

#Preview {
    ContentView()
}
