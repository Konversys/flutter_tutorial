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
            child: Container(
              padding: EdgeInsets.all(28),
              margin: EdgeInsets.all(48),
              alignment: Alignment.center,
              transform: Matrix4.rotationZ(0.05),
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(30),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                      width: 5, color: Colors.red, style: BorderStyle.solid),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: Offset(3, 3))
                  ]),
              width: 200,
              height: 200,
              child: IconButton(
                onPressed: () => print("Button pressed"),
                icon: const Icon(
                  CustomIcons.lighthouse,
                  size: 50.0,
                  color: Colors.red,
                ),
              ),
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/face1.jpg'),
                    fit: BoxFit.fill),
                gradient: RadialGradient(
                    colors: [Colors.white, Colors.blue], radius: 1.4))),
        floatingActionButton: const FloatingActionButton(
          onPressed: null,
          backgroundColor: Colors.grey,
          child: Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "F"),
            BottomNavigationBarItem(
                icon: Icon(CustomIcons.lighthouse),
                label: "C",
                tooltip: "Tooltip")
          ],
        ),
      ),
    );
  }
}
