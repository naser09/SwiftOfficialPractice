//
//  mMapView.swift
//  Swift Official Practice
//
//  Created by abu naser on 9/6/22.
//

import SwiftUI
import MapKit

struct mMapView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude:34.011_286 , longitude:-116.166_868),span: MKCoordinateSpan(latitudeDelta: 0.8, longitudeDelta:0.8))
    var body: some View {
        Map(coordinateRegion: $region )
    }
}

struct mMapView_Previews: PreviewProvider {
    static var previews: some View {
        mMapView()
    }
}
