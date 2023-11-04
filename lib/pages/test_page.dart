// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: PlacesPage(),
//     );
//   }
// }

// class PlacesPage extends StatelessWidget {
//   final List<Place> places = [
//     Place(
//       name: 'Beach Paradise',
//       description: 'A beautiful beach with golden sands and crystal clear waters.',
//       imageUrl:'https://www.travellens.co/content/images/2019/10/Paris-eiffel-tower.jpg'
//     ),
//     Place(
//       name: 'Mountain Retreat',
//       description: 'Escape to the serene mountains and enjoy nature at its best.',
//       imageUrl: 'https://www.travellens.co/content/images/2019/10/Paris-eiffel-tower.jpg',
//     ),
//     Place(
//       name: 'City Exploration',
//       description: 'Experience the vibrant life of the city with its hustle and bustle.',
//       imageUrl: 'https://www.travellens.co/content/images/2019/10/Paris-eiffel-tower.jpg',
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Places to Explore'),
//       ),
//       body: ListView.builder(
//         itemCount: places.length,
//         itemBuilder: (context, index) {
//           return PlaceCard(place: places[index]);
//         },
//       ),
//     );
//   }
// }

// class Place {
//   final String name;
//   final String description;
//   final String imageUrl;

//   Place({required this.name, required this.description, required this.imageUrl});
// }

// class PlaceCard extends StatelessWidget {
//   final Place place;

//   PlaceCard({required this.place});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: EdgeInsets.all(16.0),
//       child: Column(
//         children: [
//           Image.network(
//             place.imageUrl,
//             fit: BoxFit.cover,
//           ),
//           Padding(
//             padding: EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   place.name,
//                   style: TextStyle(
//                     fontSize: 24.0,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 SizedBox(height: 8.0),
//                 Text(
//                   place.description,
//                   style: TextStyle(fontSize: 16.0),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }