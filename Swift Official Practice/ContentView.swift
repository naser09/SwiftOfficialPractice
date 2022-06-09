//
//  ContentView.swift
//  Swift Official Practice
//
//  Created by abu naser on 9/6/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("Hello, world!")
                .fontWeight(.heavy)
                .foregroundColor(Color.green)
                .padding()
                .font(.title)
            Text("I am ")
                .padding()
                .colorMultiply(.accentColor)
                .offset(x: 10, y: 20)
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
