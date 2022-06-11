//
//  Badge.swift
//  Swift Official Practice
//
//  Created by abu naser on 11/6/22.
//

import SwiftUI

struct Badge: View {
    var symbols : some View{
        ForEach(0..<8){ index in
            BadgeSymbol().opacity(0.65)
                .rotationEffect(.degrees( Double(index) / Double(8) * Double(360) ))
        }
    }
    var body: some View {
        ZStack{
            badgeBG()
            GeometryReader{ geo in
                symbols.scaleEffect( 1.0 / 4.0 , anchor: .top )
                    .position(x: geo.size.width / 2.0, y: (2.7 / 4.0) * geo.size.height )
            }
        }
    }
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
