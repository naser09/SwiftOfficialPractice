//
//  Landmark.swift
//  Swift Official Practice
//
//  Created by abu naser on 9/6/22.
//

import Foundation
import SwiftUI
import MapKit

struct Landmark:Hashable,Codable,Identifiable { //Identifiable make it detectable if had id var .
    var id:Int
    var name:String
    var park:String
    var description:String
    var isFavorite:Bool
    private var imageName:String
    var image:Image{
        Image(imageName)
    }
    private var coordinates:Coordinates
    struct Coordinates:Hashable,Codable{
        var latitude:Double
        var longitude:Double
    }
    var locationCordinates :CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    

    static func getTempData() -> Landmark{
        return Landmark(id: 0, name: "default", park: "no park", description: "no description",isFavorite: true,imageName: "turtleRock" ,coordinates: Coordinates(
            latitude: 10.045646, longitude: 45.45646))
    }
}
