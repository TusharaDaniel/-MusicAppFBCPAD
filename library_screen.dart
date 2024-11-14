import 'package:flutter/material.dart';

class LibraryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background image
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bacs.jpg'), // Path to your background image
              fit: BoxFit.cover, // Ensures the background image covers the whole screen
            ),
          ),
        ),
        // Foreground: GridView with albums
        GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns
          ),
          itemCount: 6, // Number of albums
          itemBuilder: (context, index) {
            return Card(
              child: Image.asset(
                'assets/spotify.jpg', // Path to the album image
                fit: BoxFit.cover,
              ),
            );
          },
        ),
      ],
    );
  }
}
