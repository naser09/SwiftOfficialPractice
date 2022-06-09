//
//  MapScreen.swift
//  Swift Official Practice
//
//  Created by abu naser on 9/6/22.
//

import SwiftUI

struct MapScreen: View {
    var body: some View {
        VStack (alignment : .center){
            mMapView().ignoresSafeArea(edges: .top)
                .frame(height: 350, alignment: .center)
            MyImage_swift()
                .offset( y: -100)
    
            Text("Tirtle Rock")
                .font(.title)
            Text("very nice place to visit")
                .font(.title3)
            Text("Finally, move the subheadline font modifier from each Text view to the HStack containing them, and apply the secondary color to the subheadline text.When you apply a modifier to a layout view like a stack, SwiftUI applies the modifier to all the elements contained in the group.")
                .font(.subheadline)
        }.padding()
    }
}

struct MapScreen_Previews: PreviewProvider {
    static var previews: some View {
        MapScreen()
    }
}
