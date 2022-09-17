import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tutorial/screens/home_screen.dart';
import 'models/event.dart';

class FlutterTutorialApp extends StatelessWidget {
  final List<Event> events = [
    Event(
        name: "Event 1", location: "Location 1", startDateTime: DateTime.now()),
    Event(
        name: "Event 2", location: "Location 2", startDateTime: DateTime.now()),
    Event(
        name: "Event 3", location: "Location 3", startDateTime: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter",
      home: HomeScreen(events: events),
    );
  }
}