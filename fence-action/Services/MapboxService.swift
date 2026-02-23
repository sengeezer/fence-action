import Foundation

struct MapboxService {
    static let accessToken: String = {
        let token = Bundle.main.object(forInfoDictionaryKey: "MBXAccessToken") as? String
        return token ?? ""
    }()
}
