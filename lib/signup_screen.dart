import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
          children: [
            const SizedBox(height: 80),
            const Text("Sign Up", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            const SizedBox(height: 30),
            const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: 'Enter your name',
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                hintText: 'Enter your email',
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                hintText: 'Enter your password',
                suffixIcon: Icon(Icons.visibility_off),
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/profile'); // Navigate to Profile
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              ),
              child: const Text("Sign Up"),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
