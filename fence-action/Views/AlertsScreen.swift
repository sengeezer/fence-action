import SwiftUI

struct AlertsScreen: View {
    var body: some View {
        NavigationStack {
            ContentUnavailableView("No Alerts Yet", systemImage: "bell.slash", description: Text("Alerts will appear when you enter a zone."))
                .navigationTitle("Alerts")
        }
    }
}

#Preview {
    AlertsScreen()
}
