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
        List(landmarks){ landmark in // with identifable
            LandmarkRow(landmark: landmark ).padding(.vertical)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
