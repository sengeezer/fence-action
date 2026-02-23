# Fence Action mobile app

## Tooling

Use available MCP servers and other tools. Ask if you need additional tools. The Mapbox MCP endpoint can be found at https://mcp.mapbox.com/mcp.

## Overview

Fence Action is a geofence app that allows a user to view geofence areas worldwide and, depending on the type of fenced area, either receive security, service or social alerts. Fenced areas are categorized into public, privileged and private access zones and can have a security, social or commercial purpose. All zones are stored in a central database protected by strong encryption and can be either created by users of the mobile app or by database administrators. The latter have access to the web-based backend which can be used to administer zones and user accounts. All of this is facilitated by the Mapbox set of APIs, especially their Geofencing API.

## Components

### iOS app (frontend)

Users may view, create or purchase zone data (one-time or subscription-based). Based on the zone type, feature sets will be unlocked as soon as users genuinely and verifiably enter a zone they have legitimate access to.
Location handling uses AppLocationManager in the app shell.
Zones can be of any size and have any shape. Accuracy is paramount. Whether a zone starts on one side of a street or another, or whether it starts stage left or ends stage right in a theater makes a difference.

### Web-based admin (backend)

Owners and operators of the app and zones can administer zone data and metadata. Strong authentication is key and so a 2FA method should be used. Different access levels should also exist, e.g. admin, superuser, category administrator, moderator, etc
