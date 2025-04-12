import 'package:flutter/material.dart';
import 'widgets.dart';
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        backgroundColor: Colors.teal,
      ),
      bottomNavigationBar: BottomNavBar(currentIndex: 1), // Ensure it highlights Settings tab
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              ListTile(
                title: const Text("Account Settings"),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Add logic to navigate to Account settings page
                  Navigator.pushNamed(context, '/account');
                },
              ),
              const Divider(),
              ListTile(
                title: const Text("Notifications"),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Add logic to navigate to Notification settings page
                  Navigator.pushNamed(context, '/notifications');
                },
              ),
              const Divider(),
              ListTile(
                title: const Text("Privacy Settings"),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Add logic to navigate to Privacy settings page
                  Navigator.pushNamed(context, '/privacy');
                },
              ),
              const Divider(),
              ListTile(
                title: const Text("Language"),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Add logic to navigate to Language selection page
                  Navigator.pushNamed(context, '/language');
                },
              ),
              const Divider(),
              ListTile(
                title: const Text("About App"),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Add logic to navigate to About page
                  Navigator.pushNamed(context, '/about');
                },
              ),
              const Divider(),
              ListTile(
                title: const Text("Logout"),
                trailing: const Icon(Icons.exit_to_app, color: Colors.red),
                onTap: () {
                  // Logout logic and navigation to login page
                  Navigator.pushReplacementNamed(context, '/login');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
