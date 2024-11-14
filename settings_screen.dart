import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _darkMode = false;
  double _volume = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Colors.pinkAccent, // Custom AppBar color
        elevation: 0, // Remove AppBar shadow
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: [
          // Profile Picture and Username
          Column(
            children: [
              CircleAvatar(
                radius: 40, // Radius of the avatar
                backgroundImage: AssetImage('assets/flutter.jpg'), // Update with your image path
              ),
              SizedBox(height: 10), // Space between the avatar and username
              Text(
                'Tushara', // Replace with the actual username
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.pinkAccent,
                ),
              ),
              SizedBox(height: 20), // Space before the settings list
            ],
          ),

          // Dark Mode Toggle
          ListTile(
            leading: Icon(Icons.dark_mode, color: Colors.pinkAccent),
            title: Text(
              'Dark Mode',
              style: TextStyle(fontSize: 18.0),
            ),
            trailing: Switch(
              value: _darkMode,
              onChanged: (bool value) {
                setState(() {
                  _darkMode = value;
                });
              },
            ),
          ),
          Divider(),

          // Volume Slider
          ListTile(
            leading: Icon(Icons.volume_up, color: Colors.pinkAccent),
            title: Text(
              'Volume',
              style: TextStyle(fontSize: 18.0),
            ),
            subtitle: Slider(
              value: _volume,
              min: 0,
              max: 100,
              divisions: 10,
              label: _volume.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _volume = value;
                });
              },
            ),
          ),
          Divider(),

          // Account Settings Navigation
          ListTile(
            leading: Icon(Icons.account_circle, color: Colors.pinkAccent),
            title: Text(
              'Account',
              style: TextStyle(fontSize: 18.0),
            ),
            onTap: () {
              // Navigate to another screen for account settings
            },
          ),
          Divider(),

          // Notification Settings
          ListTile(
            leading: Icon(Icons.notifications, color: Colors.pinkAccent),
            title: Text(
              'Notifications',
              style: TextStyle(fontSize: 18.0),
            ),
            onTap: () {
              // Navigate to notification settings
            },
          ),
          Divider(),

          // Privacy Policy
          ListTile(
            leading: Icon(Icons.lock, color: Colors.pinkAccent),
            title: Text(
              'Privacy Policy',
              style: TextStyle(fontSize: 18.0),
            ),
            onTap: () {
              // Navigate to privacy policy
            },
          ),
          Divider(),

          // About Section
          ListTile(
            leading: Icon(Icons.info, color: Colors.pinkAccent),
            title: Text(
              'About',
              style: TextStyle(fontSize: 18.0),
            ),
            onTap: () {
              // Navigate to about screen
            },
          ),
        ],
      ),
    );
  }
}
