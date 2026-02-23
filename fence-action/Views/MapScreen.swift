import MapboxMaps
import SwiftUI

struct MapScreen: View {
    @EnvironmentObject private var locationManager: AppLocationManager

    var body: some View {
        let center = CLLocationCoordinate2D(latitude: 39.5, longitude: -98.0)
        Map(initialViewport: .camera(center: center, zoom: 2, bearing: 0, pitch: 0))
            .ignoresSafeArea()
            .onAppear {
                locationManager.requestAuthorizationIfNeeded()
            }
    }
}

#Preview {
    MapScreen()
}
