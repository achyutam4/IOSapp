//
//  _ndProject_YTApp.swift
//  2ndProject_YT
//
//  Created by student on 27/01/25.
//
import FirebaseCore
import SwiftUI

@main
struct _ndProject_YTApp: App {
    init()
    {
        FirebaseApp.configure()
    }
    var body: some Scene{
        WindowGroup {
            ContentView()
        }
    }
}
