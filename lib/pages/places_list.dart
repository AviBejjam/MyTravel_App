import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: PlacesPage(),
    );
  }
}

class PlacesPage extends StatelessWidget {
  final List<Place> places = [
    Place(
      name: 'Beach Paradise',
      description: 'A beautiful beach with golden sands and crystal clear waters.',
      imageUrl: 'https://www.travellens.co/content/images/2019/10/Paris-eiffel-tower.jpg',
      itinerary: 'Day 1: Relax on the beach. Day 2: Enjoy water sports and sunsets.',
    ),
    Place(
      name: 'Mountain Retreat',
      description: 'Escape to the serene mountains and enjoy nature at its best.',
      imageUrl: 'https://www.travellens.co/content/images/2019/10/Paris-eiffel-tower.jpg',
      itinerary: 'Day 1: Hiking and wildlife spotting. Day 2: Picnic by the river.',
    ),
    Place(
      name: 'City Exploration',
      description: 'Experience the vibrant life of the city with its hustle and bustle.',
      imageUrl: 'https://www.travellens.co/content/images/2019/10/Paris-eiffel-tower.jpg',
      itinerary: 'Day 1: Visit museums. Day 2: Explore the local cuisine and nightlife.',
    ),
  ];

  PlacesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Places to Explore'),
        backgroundColor: Colors.redAccent,
      ),
      body: ListView.builder(
        itemCount: places.length,
        itemBuilder: (context, index) {
          return PlaceCard(place: places[index]);
        },
      ),
    );
  }
}

class Place {
  final String name;
  final String description;
  final String imageUrl;
  final String itinerary;

  Place({required this.name, required this.description, required this.imageUrl, required this.itinerary});
}

class PlaceCard extends StatelessWidget {
  final Place place;

  const PlaceCard({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Image.network(
            place.imageUrl,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  place.name,
                  style: const TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  place.description,
                  style: const TextStyle(fontSize: 16.0),
                ),
                const SizedBox(height: 16.0),
                ExpansionTile(
                  title: const Text('Itinerary'),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        place.itinerary,
                        style: const TextStyle(fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}







/*import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PlacesPage(),
    );
  }
}

class PlacesPage extends StatelessWidget {
  final List<Place> places = [
    Place(
      name: 'Paris',
      description: 'This group has planed a lot of fun places to cover like .Group size is currently 10.',

      imageUrl:'https://www.travellens.co/content/images/2019/10/Paris-eiffel-tower.jpg'
    ),
    Place(
      name: 'Shimla',
      description: 'Escape to the serene mountains and enjoy nature at its best.,Group  size is currently at 6.',
      imageUrl: 'https://tse2.mm.bing.net/th?id=OIP.JXtQEDX3uIYpZc8OOnofWAHaEK&pid=Api&P=0&h=180',
    ),
    Place(
      name: 'Hyderabad',
      description: 'Experience the vibrant life of the city with its hustle and bustle.,Group size is at 12.',
      imageUrl: 'https://tse2.mm.bing.net/th?id=OIP.7RgG8E58PfgB0UVU-R1tRwHaE8&pid=Api&P=0&h=180',
    ),
  ];

  PlacesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Groups you can join'),
      ),
      body: ListView.builder(
        itemCount: places.length,
        itemBuilder: (context, index) {
          return PlaceCard(place: places[index]);
        },
      ),
    );
  }
}

class Place {
  final String name;
  final String description;
  final String imageUrl;

  Place({required this.name, required this.description, required this.imageUrl});
}

class PlaceCard extends StatelessWidget {
  final Place place;

  const PlaceCard({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Image.network(
            place.imageUrl,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  place.name,
                  style: const TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  place.description,
                  style: const TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
*/