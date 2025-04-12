import 'package:flutter/material.dart';

class LanguageSettingsPage extends StatelessWidget {
  const LanguageSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Language Settings"),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ListTile(
              title: const Text("English"),
              onTap: () {
                // Set language to English
              },
            ),
            ListTile(
              title: const Text("Spanish"),
              onTap: () {
                // Set language to Spanish
              },
            ),
            ListTile(
              title: const Text("French"),
              onTap: () {
                // Set language to French
              },
            ),
          ],
        ),
      ),
    );
  }
}
