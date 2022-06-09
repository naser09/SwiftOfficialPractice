//
//  BadgeTest.swift.swift
//  Swift Official Practice
//
//  Created by abu naser on 9/6/22.
//

import SwiftUI

struct BadgeTest: View {
    var body: some View {
        List{
            Text("Recents")
                .badge("new")
            Text("Favourite")
        }
    }
}

struct BadgeTest_swift_Previews: PreviewProvider {
    static var previews: some View {
        BadgeTest()
    }
}
