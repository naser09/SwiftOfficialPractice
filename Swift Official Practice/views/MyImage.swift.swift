//
//  MyImage.swift.swift
//  Swift Official Practice
//
//  Created by abu naser on 9/6/22.
//

import SwiftUI

struct MyImage_swift: View {
    var body: some View {
        Image("test")
            .frame(width: 150, height: 150, alignment: .center).padding()
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white ,lineWidth: 4)
            }.shadow(radius: 10)
    }
}

struct MyImage_swift_Previews: PreviewProvider {
    static var previews: some View {
        MyImage_swift()
    }
}
