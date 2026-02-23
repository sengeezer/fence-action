# Fence Action iOS App Plan

Date: 2026-02-22

## Goals
- Build an iOS app that lets users view, enter, and act on geofenced zones worldwide.
- Support zone categories: public, privileged, private.
- Support zone purposes: security, social, commercial.
- Use Mapbox APIs (especially Geofencing API) for geospatial data and detection.
- Enable zone creation and purchase flows (one-time and subscription).

## Constraints and Dependencies
- Mapbox SDK + Geofencing API usage limits and pricing.
- High accuracy requirements for small or precise zones.
- iOS location permissions and accuracy authorization.
- Central database (admin and user-created zones), strong encryption, and access levels (handled by backend; mobile consumes APIs).

## Architecture Decisions (to confirm by checkpoints)
- UI framework: SwiftUI.
- App architecture: MVVM with lightweight service layer.
- Data: Mapbox + app backend API (mocked first, then real).
- Geofence detection: Mapbox Geofencing API vs local detection (to be decided).

## Milestones and Checkpoints

### Phase 0 — Scope and UX agreement
Deliverables:
- Confirm primary user journeys: browse zones, enter zone, receive alerts, create/purchase zones.
- Confirm zone types and purposes usage in UI.
- Define what "verifiably enter a zone" means for MVP.

Checkpoint 1 (User):
- Approve scope, core journeys, and verification definition.
- Decide on MVP geofence verification strategy (Mapbox API vs local).

### Phase 1 — Project scaffold and foundations
Deliverables:
- SwiftUI app shell: Map, Zones, Alerts, Profile sections.
- Models: Zone, ZoneType, ZonePurpose, AccessLevel.
- Services: AppLocationManager, MapboxService, ZonesService (mock data).
- Mapbox token/config wiring in `Info.plist`.

Checkpoint 2 (User):
- Approve architecture (MVVM + services) and module structure.
- Confirm initial data model fields and mock dataset shape.

### Phase 2 — Map view and zone rendering (MVP)
Deliverables:
- Mapbox map view with user location.
- Render polygons (GeoJSON) with styling per category/purpose.
- Zone tap: summary panel.

Checkpoint 3 (User):
- Approve map UX and zone visualization.
- Confirm zone metadata display requirements.

### Phase 3 — Access verification and alerts
Deliverables:
- Implement entry/exit detection (chosen strategy).
- Access checks: user legitimacy + zone type rules.
- Alerts: security/social/commercial (basic notification UI).

Checkpoint 4 (User):
- Approve verification logic and alert behavior.
- Confirm notification types (in-app vs push in MVP).

### Phase 4 — Zone creation and purchase flows
Deliverables:
- Zone creation UI: draw/shape, metadata, submit.
- Purchase flow stubs: one-time/subscription.
- Profile basics (account, access status, purchases).

Checkpoint 5 (User):
- Approve creation and purchase UX flows.
- Confirm required fields for zone creation and access criteria.

### Phase 5 — Backend integration and hardening
Deliverables:
- Replace mocks with real backend endpoints.
- Auth, secure storage, error handling.
- Performance and accuracy tuning.

Checkpoint 6 (User):
- Approve beta readiness and testing scope.

## Open Questions (must be decided by checkpoints)
- Geofencing approach: Mapbox Geofencing API vs local geofence detection for MVP?
- “Verifiably enter a zone” definition: GPS accuracy threshold? server confirmation? time-in-zone?
- Authentication requirements in MVP: anonymous browsing allowed?
- Notification type: in-app only vs push notifications in MVP?
- Zone creation: which shapes to support initially (polygon only vs circle)?
- Purchases: Apple IAP now or placeholder UX until backend is ready?
- Admin-created vs user-created zones: how to distinguish in UI?
- Access rules per zone type: privileged/private verification method?

## Non-Goals for Initial MVP (unless requested)
- Full admin web backend implementation.
- 2FA management UI for admins (backend-owned).
- Advanced analytics dashboards.

## Risks and Mitigations
- Mapbox cost usage: implement caching and throttle heavy calls.
- Accuracy issues: require precise location and prompt when accuracy is low.
- Battery usage: tune location update intervals.

## Verification Notes
- AppLocationManager rename applied in the app shell.
- Each checkpoint should result in explicit user approval before proceeding.
- Any new requirement discovered mid-phase triggers a brief scope recheck.
