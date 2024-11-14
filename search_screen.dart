import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  // Sample data for search results (can be replaced with real data)
  final List<String> _allItems = [
    'Rock Music',
    'Pop Music',
    'Jazz Music',
    'Classical Music',
    'Hip Hop Music',
    'Reggae Music',
    'Blues Music',
    'Electronic Music',
  ];

  List<String> _searchResults = [];

  // Function to handle the search operation
  void _search(String query) {
    List<String> results = [];
    if (query.isNotEmpty) {
      results = _allItems
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }

    setState(() {
      _searchResults = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
        backgroundColor: Colors.pinkAccent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // Search bar
                TextField(
                  onChanged: _search, // Trigger search on text change
                  decoration: InputDecoration(
                    labelText: 'Search for music',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
                SizedBox(height: 20), // Space between search bar and results

                // Display search results
                _searchResults.isEmpty
                    ? Center(child: Text('No results found'))
                    : Expanded(
                  child: ListView.builder(
                    itemCount: _searchResults.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(_searchResults[index]),
                        onTap: () {
                          // Handle item tap, e.g., navigate to a detail screen
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),

          // Profile Picture in the top-right corner
          Positioned(
            top: 16.0,
            right: 16.0,
            child: CircleAvatar(
              radius: 25.0, // Adjust the size as needed
              backgroundImage: AssetImage('assets/flutter.jpg'), // Update with your image path
            ),
          ),
        ],
      ),
    );
  }
}
