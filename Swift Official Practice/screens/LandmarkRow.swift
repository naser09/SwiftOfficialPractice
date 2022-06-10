//
//  LandmarkRow.swift
//  Swift Official Practice
//
//  Created by abu naser on 9/6/22.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark:Landmark
    var body: some View {
        HStack{
//            Image(landmark.image)  //  first time mistake
            landmark.image
                .resizable()
                .frame(width: 60, height: 60, alignment: .center)
            
                Text(landmark.name)
            Spacer()
            if landmark.isFavorite{
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                    .padding()
            }
            
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    
    static var previews: some View {
        LandmarkRow(landmark: landmarks[0])
    }
}
