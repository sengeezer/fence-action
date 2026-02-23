import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView {
            MapScreen()
                .tabItem {
                    Label("Map", systemImage: "map")
                }
            ZonesScreen()
                .tabItem {
                    Label("Zones", systemImage: "square.3.layers.3d")
                }
            AlertsScreen()
                .tabItem {
                    Label("Alerts", systemImage: "bell")
                }
            ProfileScreen()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
        }
    }
}

#Preview {
    RootTabView()
}
