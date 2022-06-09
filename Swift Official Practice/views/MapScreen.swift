//
//  MapScreen.swift
//  Swift Official Practice
//
//  Created by abu naser on 9/6/22.
//

import SwiftUI
import MapKit
struct MapScreen: View {
    var coordinates:CLLocationCoordinate2D
    var image:Image
    var name:String
    var title:String
    var description:String
    var body: some View {
        ScrollView{
            mMapView(coordinates: coordinates)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300, alignment: .center)
            MyImage_swift(image: image )
                .offset( y: -100)
            HStack{
                Text(name)
                    .font(.title)
                    .offset( y: -100)
                Text(title)
                    .font(.title3)
                    .offset( y: -100)
            }
            VStack{
                    Text(description)
                        .font(.subheadline)
                        .offset( y: -100)
            }
        }.navigationTitle(name)
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct MapScreen_Previews: PreviewProvider {
    static var previews: some View {
        MapScreen(
            coordinates:CLLocationCoordinate2D(latitude:34.011_286 , longitude:-116.166_868),
            image: Image("test") ,name: "Tirtle Rock" ,
                  title: "very nice place to visit" ,
        description:
                    "Finally, move the subheadline font modifier from each Text view to the HStack containing them, and apply the secondary color to the subheadline text.When you apply a modifier to a layout view like a stack, SwiftUI applies the modifier to all the elements contained in the group."
        )
    }
}
