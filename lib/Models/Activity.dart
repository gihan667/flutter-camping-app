import 'package:flutter/material.dart';

class Activity {
  final int id;
  final String name;
  final String icon;

  Activity({
    @required this.id,
    @required this.name,
    @required this.icon,
  });
}

// demo activities

List<Activity> demoActivities = [
  Activity(id: 1, name: 'Kayaking', icon: 'assets/icons/kayaking.svg'),
  Activity(id: 2, name: 'Boating', icon: 'assets/icons/boating.svg'),
  Activity(id: 3, name: 'Fishing', icon: 'assets/icons/fishing.svg'),
  Activity(id: 4, name: 'Hiking', icon: 'assets/icons/hiking.svg'),
];