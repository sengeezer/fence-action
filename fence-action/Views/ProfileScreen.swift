import SwiftUI

struct ProfileScreen: View {
    var body: some View {
        NavigationStack {
            List {
                Section("Account") {
                    Label("Sign in", systemImage: "person.fill")
                    Label("Access status", systemImage: "checkmark.seal")
                }
                Section("Purchases") {
                    Label("Subscriptions", systemImage: "creditcard")
                    Label("One-time passes", systemImage: "ticket")
                }
                Section("Settings") {
                    Label("Location accuracy", systemImage: "location")
                    Label("Notifications", systemImage: "bell")
                }
            }
            .navigationTitle("Profile")
        }
    }
}

#Preview {
    ProfileScreen()
}
