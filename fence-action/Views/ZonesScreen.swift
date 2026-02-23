import SwiftUI

struct ZonesScreen: View {
    @EnvironmentObject private var zonesService: ZonesService

    var body: some View {
        NavigationStack {
            List(zonesService.zones) { zone in
                VStack(alignment: .leading, spacing: 6) {
                    Text(zone.name)
                        .font(.headline)
                    Text("\(zone.category.rawValue) • \(zone.purpose.rawValue) • \(zone.accessLevel.rawValue)")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                    Text(zone.summary)
                        .font(.footnote)
                        .foregroundStyle(.secondary)
                }
                .padding(.vertical, 4)
            }
            .navigationTitle("Zones")
        }
    }
}

#Preview {
    ZonesScreen()
}
