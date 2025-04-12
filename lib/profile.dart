import 'package:flutter/material.dart';
import 'widgets.dart';
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(currentIndex: 2),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF02AAB0), Color(0xFF00CDAC)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 20),
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage("https://via.placeholder.com/150"),
              ),
              SizedBox(height: 10),
              Text("Mst Taposi Rabeya", style: TextStyle(fontSize: 20, color: Colors.white)),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProfileStat(label: "Heart rate", value: "215bpm"),
                  ProfileStat(label: "Calories", value: "756cal"),
                  ProfileStat(label: "Weight", value: "103lbs"),
                ],
              ),
              SizedBox(height: 20),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                  ),
                  child: ListView(
                    children: [
                      ProfileTile(title: "My Saved"),
                      ProfileTile(title: "Medicine Info"),
                      ProfileTile(title: "Medicine Tracker"),
                      ProfileTile(title: "FAQs"),
                      ProfileTile(title: "Logout", isLogout: true),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileStat extends StatelessWidget {
  final String label, value;
  const ProfileStat({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(Icons.favorite, color: Colors.white),
        SizedBox(height: 4),
        Text(value, style: TextStyle(color: Colors.white)),
        Text(label, style: TextStyle(color: Colors.white70, fontSize: 12)),
      ],
    );
  }
}

class ProfileTile extends StatelessWidget {
  final String title;
  final bool isLogout;
  const ProfileTile({super.key, required this.title, this.isLogout = false});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title, style: TextStyle(color: isLogout ? Colors.red : Colors.black)),
      trailing: Icon(Icons.arrow_forward_ios),
    );
  }
}
