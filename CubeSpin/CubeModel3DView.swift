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
    @State private var rotationY: Double = 0.0
    
    var body: some View {
        Model3D(named: "Cube") { model in
                model
                .rotation3DEffect(
                    .degrees(rotationY),
                    axis: (x: 0, y: 1, z: 0)
                )
        } placeholder: {
            ProgressView()
        }.gesture(
            DragGesture(minimumDistance: 0)
                .onChanged { value in
                    rotationY += Double(value.translation.width / 100)
                    rotationY = rotationY.truncatingRemainder(dividingBy: 360)
                }
        )
        .ornament(attachmentAnchor: .scene(.bottom)) {
            Text("Rotation: \(rotationY, specifier: "%.2f")º")
                .padding()
                .glassBackgroundEffect()
        }
        .padding3D(.back, 80)
    }
}

#Preview {
    CubeModel3DView()
}
