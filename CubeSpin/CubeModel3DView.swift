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

struct CubeModel3DView: View {
    var body: some View {
        Model3D(named: "Cube")
            .padding3D(.back, 80)
    }
}

#Preview {
    CubeModel3DView()
}
