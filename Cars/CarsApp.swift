//
//  CarsApp.swift
//  Cars
//
//  Created by Alfredo Luco on 11-07-20.
//

import SwiftUI
import Firebase

@main
struct CarsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().onAppear {
                FirebaseApp.configure()
            }
        }
    }
}
