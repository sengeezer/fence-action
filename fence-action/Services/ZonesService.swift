import Combine
import Foundation

final class ZonesService: ObservableObject {
    @Published var zones: [Zone] = [
        Zone(
            id: UUID(),
            name: "Downtown Security Zone",
            category: .privileged,
            purpose: .security,
            accessLevel: .verified,
            summary: "Restricted security perimeter with verified access."
        ),
        Zone(
            id: UUID(),
            name: "Riverside Social Zone",
            category: .publicZone,
            purpose: .social,
            accessLevel: .open,
            summary: "Public social space with event alerts."
        ),
        Zone(
            id: UUID(),
            name: "Harbor Commercial Zone",
            category: .privateZone,
            purpose: .commercial,
            accessLevel: .restricted,
            summary: "Private commerce area for subscribers."
        )
    ]
}
