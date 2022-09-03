// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() => runApp(const FlutterTutorialApp());

class FlutterTutorialApp extends StatelessWidget {
  const FlutterTutorialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter", style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.yellow,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: Colors.blue,
                  padding: EdgeInsets.all(30),
                  child: Text("1"),
                ),
                Container(
                  color: Colors.yellow,
                  padding: EdgeInsets.all(40),
                  child: Text("2"),
                ),
                Container(
                  color: Colors.pink,
                  padding: EdgeInsets.all(50),
                  child: Text("3"),
                ),
              ],
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: const FloatingActionButton(
          onPressed: null,
          backgroundColor: Colors.blue,
          child: Icon(Icons.pin_drop_outlined),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blue,
          fixedColor: Colors.white,
          unselectedItemColor: Colors.white70,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.map_outlined), label: "Map"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_pin_rounded), label: "Friends"),
            BottomNavigationBarItem(
                icon: Icon(Icons.message_outlined), label: "Messages"),
          ],
        ),
      ),
    );
  }
}
