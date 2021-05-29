//
//  TwitterCloneApp.swift
//  TwitterClone
//
//  Created by Mukesh Jha on 24/05/21.
//

import SwiftUI
import Firebase

@main
struct TwitterCloneApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(AuthViewModal())
        }
    }
}
