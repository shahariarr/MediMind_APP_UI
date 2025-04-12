import 'package:flutter/material.dart';

class PrivacySettingsPage extends StatelessWidget {
  const PrivacySettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Privacy Settings"),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ListTile(
              title: const Text("Privacy Policy"),
              onTap: () {
                // Open Privacy Policy page or URL
              },
            ),
            ListTile(
              title: const Text("Change Privacy Settings"),
              onTap: () {
                // Add logic to change privacy settings
              },
            ),
            SwitchListTile(
              title: const Text("Make Profile Private"),
              value: false, // Replace with dynamic value
              onChanged: (bool value) {
                // Add logic to change privacy preference
              },
            ),
          ],
        ),
      ),
    );
  }
}
