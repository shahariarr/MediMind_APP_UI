import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications Settings"),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SwitchListTile(
              title: const Text("Enable Notifications"),
              value: true, // Replace with dynamic value
              onChanged: (bool value) {
                // Add logic to enable/disable notifications
              },
            ),
            SwitchListTile(
              title: const Text("Receive Email Updates"),
              value: true, // Replace with dynamic value
              onChanged: (bool value) {
                // Add logic to handle email updates preference
              },
            ),
          ],
        ),
      ),
    );
  }
}
