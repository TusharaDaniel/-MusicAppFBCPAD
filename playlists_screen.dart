// lib/playlists_screen.dart
import 'package:flutter/material.dart';

class PlaylistsScreen extends StatelessWidget {
  // List of playlist images
  final List<String> playlistImages = [
    'assets/playlist1.png',
    'assets/playlist2.png',
    'assets/playlist3.png',
    'assets/playlist4.png',
    'assets/playlist5.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Playlists'),
        backgroundColor: Colors.pinkAccent, // Custom AppBar color
        elevation: 0, // Remove AppBar shadow
      ),
      body: Column(
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
                'Tushara playlist', // Replace with the actual username
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.pinkAccent,
                ),
              ),
              SizedBox(height: 20), // Space before the playlist list
            ],
          ),

          // Playlist List
          Expanded(
            child: ListView.builder(
              itemCount: playlistImages.length, // Number of playlists based on the image list
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 30, // Adjust the radius as needed
                    backgroundImage: AssetImage(playlistImages[index]), // Use the image for the playlist
                  ),
                  title: Text('Playlist ${index + 1}'), // Updated to show 'Playlist 1', 'Playlist 2', etc.
                  onTap: () {
                    // Handle playlist tap here
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
