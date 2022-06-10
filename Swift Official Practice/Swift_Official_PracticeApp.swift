//
//  Swift_Official_PracticeApp.swift
//  Swift Official Practice
//
//  Created by abu naser on 9/6/22.
//

import SwiftUI

@main
struct Swift_Official_PracticeApp: App {
    
    @StateObject private var model:ModelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(model)
        }
    }
}
