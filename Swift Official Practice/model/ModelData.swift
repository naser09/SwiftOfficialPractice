//
//  ModelData.swift
//  Swift Official Practice
//
//  Created by abu naser on 9/6/22.
//

import Foundation

final class ModelData:ObservableObject{
    @Published var landmarks:[Landmark] = load("landmarkData.json")
    var hikes:[Hike] = load("hikeData.json")
}
// before adding modelData class
//var landmarks:[Landmark] = load("landmarkData.json")
func load<T:Decodable>(_ fileName:String) ->T{
    let data:Data
    guard let file = Bundle.main.url(forResource: fileName, withExtension: nil)
    else{
        fatalError("couoldnt find \(fileName) in the apps Main resource")
    }
    do{
        try data = Data(contentsOf: file)
    }catch{
        fatalError("Couldn't load \(fileName) from main bundle:\n\(error)")
    }
    do{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }catch{
        fatalError("Couldn't parse \(fileName) from main bundle:\n\(error)")
    }
}
