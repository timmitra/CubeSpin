//
// ---------------------------- //
// Original Project: CubeSpin
// Created on 2024-09-25 by Tim Mitra
// Mastodon: @timmitra@mastodon.social
// Twitter/X: timmitra@twitter.com
// Web site: https://www.it-guy.com
// ---------------------------- //
// Copyright © 2024 iT Guy Technologies. All rights reserved.


import SwiftUI
import RealityKit

struct LaunchView: View {
    @Environment(\.openWindow) private var openWindow
    @Environment(\.dismissWindow) private var dismissWindow
    @State private var isWindowOpen: Bool = false
    
    var body: some View {

        Button(isWindowOpen ? "Close Cube Window" : "Open Cube Window") {
            if isWindowOpen {
                dismissWindow(id: "CubeWindow")
                isWindowOpen = false
            } else {
                openWindow(id: "CubeWindow")
                isWindowOpen = true
            }
        }

    }
}

#Preview(windowStyle: .automatic) {
    LaunchView()
}
