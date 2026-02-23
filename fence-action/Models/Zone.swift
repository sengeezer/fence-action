import Foundation

struct Zone: Identifiable {
    let id: UUID
    let name: String
    let category: ZoneCategory
    let purpose: ZonePurpose
    let accessLevel: AccessLevel
    let summary: String
}

enum ZoneCategory: String, CaseIterable {
    case publicZone = "Public"
    case privileged = "Privileged"
    case privateZone = "Private"
}

enum ZonePurpose: String, CaseIterable {
    case security = "Security"
    case social = "Social"
    case commercial = "Commercial"
}

enum AccessLevel: String, CaseIterable {
    case open = "Open"
    case verified = "Verified"
    case restricted = "Restricted"
}
