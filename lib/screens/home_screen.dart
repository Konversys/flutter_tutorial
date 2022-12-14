import 'package:flutter/material.dart';
import '../components/event_card.dart';
import '../models/event.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
    required this.events,
  }) : super(key: key);

  final List<Event> events;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.yellow,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                width: 100,
                height: 50,
                child: Container(color: Colors.blue),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 100,
                width: 250,
                child: ListView.builder(
                  itemCount: events.length,
                  itemBuilder: (_, index) => EventCard(event: events[index]),
                  physics: BouncingScrollPhysics(),
                  controller: ScrollController(initialScrollOffset: 50),
                  reverse: false,
                  scrollDirection: Axis.vertical,
                ),
              ),
              Center(
                  child: Container(
                    color: Colors.blue,
                    width: 150,
                    height: 150,
                    child: Wrap(
                      direction: Axis.horizontal,
                      spacing: 10,
                      runSpacing: 15,
                      alignment: WrapAlignment.center,
                      runAlignment: WrapAlignment.center,
                      verticalDirection: VerticalDirection.up,
                      children: [
                        Container(
                          color: Colors.green,
                          width: 50,
                          height: 50,
                        ),
                        Container(
                          color: Colors.yellow,
                          width: 50,
                          height: 50,
                        ),
                        Container(
                          color: Colors.yellow,
                          width: 50,
                          height: 50,
                        ),
                        Container(
                          color: Colors.yellow,
                          width: 50,
                          height: 50,
                        )
                      ],
                    ),
                  ))
            ],
          ),
          Row(
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    color: Colors.red,
                    padding: EdgeInsets.all(60),
                  ),
                  Container(
                    color: Colors.blue,
                    padding: EdgeInsets.all(40),
                  ),
                  Container(
                    color: Colors.green,
                    padding: EdgeInsets.all(20),
                  ),
                  Positioned(
                    right: -25,
                    top: 10,
                    bottom: 10,
                    child: Container(
                      color: Colors.yellow,
                      padding: EdgeInsets.all(20),
                    ),
                  )
                ],
              )
            ],
          ),
          Row(
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
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.blue,
                    padding: EdgeInsets.all(30),
                    child: Text("1"),
                  )),
              Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.yellow,
                    padding: EdgeInsets.all(40),
                    child: Text("2"),
                  )),
              Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.pink,
                    padding: EdgeInsets.all(50),
                    child: Text("3"),
                  ))
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
    );
  }
}