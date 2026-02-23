//
//  fence_actionApp.swift
//  fence-action
//
//  Created by Fabio Albertin on 14/02/2026.
//

import SwiftUI

@main
struct fence_actionApp: App {
    @StateObject private var zonesService = ZonesService()
    @StateObject private var locationManager = AppLocationManager()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(zonesService)
                .environmentObject(locationManager)
        }
    }
}
