import Combine
import CoreLocation
import Foundation

final class AppLocationManager: NSObject, ObservableObject {
    private let manager = CLLocationManager()
    @Published private(set) var authorizationStatus: CLAuthorizationStatus

    override init() {
        self.authorizationStatus = manager.authorizationStatus
        super.init()
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
    }

    func requestAuthorizationIfNeeded() {
        switch manager.authorizationStatus {
        case .notDetermined:
            manager.requestWhenInUseAuthorization()
        case .authorizedWhenInUse:
            requestTemporaryFullAccuracyIfAvailable()
        default:
            break
        }
    }

    private func requestTemporaryFullAccuracyIfAvailable() {
        guard manager.accuracyAuthorization == .reducedAccuracy else { return }
        manager.requestTemporaryFullAccuracyAuthorization(withPurposeKey: "LocationAccuracyAuthorizationDescription") { _ in }
    }
}

extension AppLocationManager: CLLocationManagerDelegate {
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        authorizationStatus = manager.authorizationStatus
        if authorizationStatus == .authorizedWhenInUse {
            requestTemporaryFullAccuracyIfAvailable()
        }
    }
}
