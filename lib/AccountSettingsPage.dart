import 'package:flutter/material.dart';

class AccountSettingsPage extends StatelessWidget {
  const AccountSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Account Settings"),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ListTile(
              title: const Text("Change Username"),
              onTap: () {
                // Add logic to change the username
              },
            ),
            ListTile(
              title: const Text("Change Email"),
              onTap: () {
                // Add logic to change the email
              },
            ),
            ListTile(
              title: const Text("Change Password"),
              onTap: () {
                // Add logic to change password
              },
            ),
          ],
        ),
      ),
    );
  }
}
