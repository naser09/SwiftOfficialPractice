//
//  LandmarkList.swift
//  Swift Official Practice
//
//  Created by abu naser on 10/6/22.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData:ModelData
    
    @State private var shoFavOnly:Bool = false
    private var FilteredLandsmarks:[Landmark]{
        modelData.landmarks.filter{landmark in
            ( !shoFavOnly || landmark.isFavorite)
        }
    }

    var body: some View {
//        List(landmarks , id: \.id){ landmark in without Identifiable
        NavigationView{
            List{ // with identifable
                Toggle(isOn: $shoFavOnly, label: {
                        Text("Favorite Only")})
                    ForEach(FilteredLandsmarks){ landmark in
                        
                        NavigationLink{
                            MapScreen(coordinates: landmark.locationCordinates, image: landmark.image, name: landmark.name, title: landmark.park, description: landmark.description ,
                                      isSet:$modelData.landmarks[FilteredLandsmarks.firstIndex(where:{$0.id == landmark.id} )!].isFavorite
                            )
                        }label: {
                                LandmarkRow(landmark: landmark ).padding(.vertical)
                            }
                    }
                }.navigationTitle("Landsmarks")
            
        }

    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation" , "iPhone XS Max" , "iPhone 13 Pro"],id: \.self){ device in
        
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: device))
                .previewDisplayName(device)
                .environmentObject(ModelData())
        }
    }
}
