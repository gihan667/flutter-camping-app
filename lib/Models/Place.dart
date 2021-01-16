import 'package:flutter/material.dart';

class Place {
  final int id;
  final String name;
  final String image;

  Place({
    @required this.id,
    @required this.name,
    @required this.image,
  });
}

// demo places

List<Place> demoPlaces = [
  Place(id: 1, name: 'Lichnos camp Greece', image: 'assets/images/place1.png'),
  Place(id: 2, name: 'Bays of Fire Australia', image: 'assets/images/place2.png'),
  Place(id: 3, name: 'Cape Range National Park Australia', image: 'assets/images/place3.png'),
];