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

@main
struct CubeSpinApp: App {
    var body: some Scene {
        WindowGroup {
            LaunchView()
        }
        WindowGroup(id: "CubeWindow") {
            CubeModel3DView()
        }
        .defaultSize(width: 500, height: 500)
    }
}
