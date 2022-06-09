//
//  LandmarkList.swift
//  Swift Official Practice
//
//  Created by abu naser on 10/6/22.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
//        List(landmarks , id: \.id){ landmark in without Identifiable
        NavigationView{
            List(landmarks){ landmark in // with identifable
            NavigationLink{
                MapScreen(coordinates: landmark.locationCordinates, image: landmark.image, name: landmark.name, title: landmark.park, description: landmark.description)
            }label: {
                    LandmarkRow(landmark: landmark ).padding(.vertical)
                }
            }
        }.navigationTitle("Landmarks")

    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
