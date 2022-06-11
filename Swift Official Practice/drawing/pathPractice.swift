//
//  pathPractice.swift
//  Swift Official Practice
//
//  Created by abu naser on 11/6/22.
//

import SwiftUI

struct pathPractice: View {
    var body: some View {
        GeometryReader{ geometry in
            let width = geometry.size.width
            let height  = geometry.size.height
            Path{path in
                path.move(to: CGPoint(x: width * 0.2, y: height * 0.2))
                path.addLine(to: CGPoint(x: width * 0.2 , y: height * 0.6))
                
                path.move(to: CGPoint(x: width * 0.2, y: height * 0.2))
                path.addLine(to: CGPoint(x: width * 0.8 , y: height * 0.2))
                
                path.move(to: CGPoint(x: width * 0.8 , y: height * 0.2))
                path.addLine(to: CGPoint(x: width * 0.8 , y: height * 0.6))
                
                path.move(to: CGPoint(x: width * 0.8 , y: height * 0.6))
                path.addLine(to: CGPoint(x: width * 0.2 , y: height * 0.6))
                
                path.move(to: CGPoint(x: width/2, y: height/2))
         
                path.addRoundedRect(in: CGRect(x: (width/2)-50, y: (height/2)-100, width: 100, height:200), cornerSize: CGSize(width: 50, height: 50))
                path.addRoundedRect(in: CGRect(x: (width/2)-45, y: (height/2)-95, width: 85, height:190), cornerSize: CGSize(width: 50, height: 50))
            }.stroke().fill(.blue)
        }
    }
}

struct pathPractice_Previews: PreviewProvider {
    static var previews: some View {
        pathPractice()
    }
}
