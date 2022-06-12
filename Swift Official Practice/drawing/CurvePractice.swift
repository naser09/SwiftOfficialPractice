//
//  CurvePractice.swift
//  Swift Official Practice
//
//  Created by abu naser on 12/6/22.
//

import SwiftUI

struct CurvePractice: View {
    var body: some View {
        GeometryReader{geo in
            let width  = min(geo.size.width , geo.size.height )
            let height = width
            let middle = width * 0.5
            
            Path{path in
                path.move(to: CGPoint(x: middle, y: 0))
                path.addLine(to: CGPoint(x: middle, y: height - height * 0.5))
                path.addQuadCurve(to: CGPoint(x: middle - width * 0.2, y: height - height * 0.3), control: CGPoint(x: 160.0, y: 220.0 ))
                path.addLine(to: CGPoint(x: 0.0, y: height - height * 0.3 ))
                
                path.addLine(to: CGPoint(x: 0.0, y: height - height * 0.2 ))
                path.addLine(to: CGPoint(x: 100, y: height - height * 0.2))
                path.addQuadCurve(to: CGPoint(x: 198, y: height - height * 0.4), control:
                CGPoint(x: 180, y: 260))
                path.addLine(to: CGPoint(x: 198, y: 0))
                path.addLine(to: CGPoint(x: middle, y: 0))
            }.fill(.linearGradient(Gradient.init(colors: [Color.red , Color.indigo ]), startPoint: UnitPoint(x: 0.0, y: 0.0), endPoint: UnitPoint(x: 0.5, y: 0.7)))
        }
    }
}

struct CurvePractice_Previews: PreviewProvider {
    static var previews: some View {
        CurvePractice()
    }
}
