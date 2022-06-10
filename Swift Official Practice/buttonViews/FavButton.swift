//
//  FavButton.swift
//  Swift Official Practice
//
//  Created by abu naser on 10/6/22.
//

import SwiftUI

struct FavButton: View {
    @Binding var isSet:Bool
    var body: some View {
        Button(action: {isSet.toggle()} , label: {
            Image(systemName: isSet ? "star.fill" : "star" )
                .foregroundColor(isSet ? Color.yellow : Color.gray)
        })
    }
}

struct FavButton_Previews: PreviewProvider {
    static var previews: some View {
        FavButton(isSet: .constant(true))
    }
}
