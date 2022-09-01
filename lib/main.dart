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
          title: const Text("Flutter"),
          centerTitle: true,
          backgroundColor: Colors.grey,
        ),
        body: RichText(
          text: const TextSpan(
            style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 20.0,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
                letterSpacing: 3.0,
                color: Colors.blue),
            children: [
              TextSpan(text: "Hello "),
              TextSpan(text: "World",
              style: TextStyle(color: Colors.red)),
              TextSpan(text: "!"),
            ]
          )
        ),
        floatingActionButton: const FloatingActionButton(
          onPressed: null,
          backgroundColor: Colors.grey,
          child: Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "F"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance_sharp), label: "C")
          ],
        ),
      ),
    );
  }
}
