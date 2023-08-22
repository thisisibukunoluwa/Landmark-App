//
//  Badge.swift
//  Landmarks
//
//  Created by Ibukunoluwa Akintobi on 22/08/2023.
//

import SwiftUI

struct Badge: View {
    var badgeSymbols:some View {
        ForEach(0..<8) {
            index in RotatedBadgeSymbol(angle: .degrees(Double(index) / Double(8)) * 360.0)
            // (1 / 8 ) * 360 = 45 degrees
            // (2 / 8 ) * 360 = 90 degrees
            // (3 / 8 ) * 360 = 135 degrees
            // (4 / 8 ) * 360 = 180 degrees
            // (5 / 8 ) * 360 = 225 degrees
            // (6 / 8 ) * 360 = 270 degrees
            // (7 / 8 ) * 360 = 315 degrees
            // (8 / 8 ) * 360 = 360 degrees
            // then scale to fit makes it fit its parent (it shrinks inward)
        }.opacity(0.5)
    }
    var body:some View {
        ZStack {
            BadgeBackground()
            GeometryReader {
                geometry in badgeSymbols
                    .scaleEffect(1.0 / 4.0, anchor: .top)
                    .position(x:geometry.size.width / 2.0, y: (3.0 / 4.0) * geometry.size.height )
            }.scaledToFit()
        }
    }
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
