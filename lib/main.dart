import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_tutorial/custom_icons.dart';

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
        body: Container(
          padding: EdgeInsets.all(28),
          margin: EdgeInsets.all(48),
          color: Colors.blue,
          alignment: Alignment.center,
          child: IconButton(
            onPressed: () => print("Button pressed"),
            icon: const Icon(
              CustomIcons.lighthouse,
              size: 50.0,
              color: Colors.red,
            ),
          ),
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
                icon: Icon(CustomIcons.lighthouse), label: "C", tooltip: "Tooltip")
          ],
        ),
      ),
    );
  }
}
